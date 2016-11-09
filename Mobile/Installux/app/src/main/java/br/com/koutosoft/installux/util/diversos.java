package br.com.koutosoft.installux.util;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;

import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import br.com.koutosoft.installux.R;
import br.com.koutosoft.installux.actConfig;
import br.com.koutosoft.installux.actEnvia;
import br.com.koutosoft.installux.actFicha;
import br.com.koutosoft.installux.actConsultaFichas;
import br.com.koutosoft.installux.actImportacao;
import br.com.koutosoft.installux.actAdmin;

/**
 * Created by Koutosoft on 22/05/2015.
 */
public class diversos {

    public static  String strzero(int n)
    {
        if(n < 10)
            return "0" + String.valueOf(n);
        return String.valueOf(n);
    }

    public static String difHoras(String horaInicial, String horaFinal) {

        try {
            SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
            Calendar calInicial = Calendar.getInstance();
            Calendar calFinal = Calendar.getInstance();

            calInicial.setTime(sdf.parse(horaInicial));
            calFinal.setTime(sdf.parse(horaFinal));

            long totMinutos = ((calFinal.getTimeInMillis() - calInicial.getTimeInMillis())) / 60000;
            long minutos = totMinutos % 60;
            long horas = totMinutos / 60;

            if( horas < 0 )
            {
                return "00:00";
            }
            else {

                return strzero((int) horas) + ":" + strzero((int) minutos);
            }

        } catch (ParseException e) {
            e.printStackTrace();
            return "00:00";
        }
    }

    public static String dateToSql( String d )
    {
        String r = "";
        String dia = d.substring(0,2);
        String mes = d.substring(3,5);
        String ano = d.substring(6,10);

        r = "'"+dia + "-"+mes+"-"+ano+"'";


        return r;
    }

    public static Date strToDate( String s )
    {
        Date retorno =null;
        SimpleDateFormat dateFormat2 = new SimpleDateFormat("dd/MM/yyyy");
        try {
            retorno = dateFormat2.parse(s);
        } catch (ParseException e) {
        }

        return retorno;

    }

    public static Time strToTime( String s )
    {
        Time retorno =null;
        SimpleDateFormat dateFormat2 = new SimpleDateFormat("hh:mm");
        try {
            Date date = dateFormat2.parse(s);
            retorno = new Time( date.getTime() );
            //String out = dateFormat2.format(date);
        } catch (ParseException e) {
        }

        return retorno;
    }

    public static boolean dataValida( String data )
    {

        try
        {
            SimpleDateFormat dateFormat2 = new SimpleDateFormat("dd/MM/yyyy");
            return true;
        }
        catch (Exception e)
        {
            return false;
        }

    }
    public static boolean horaValida( String hora )
    {
        SimpleDateFormat sdf  = new SimpleDateFormat( "HH:mm" );

        sdf.setLenient( false );

        try
        {
            Date d = sdf.parse( hora );
            return true;
        }
        catch( ParseException e )
        {
            return false;
        }
    }

    public static String dataAtual() {
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        return dateFormat.format(date);
    }



    public static String stringArrayJson(String s)
    {
        s=s.replaceAll("\\\\", "\"");
        s = "["+s+"]";
        return s;

    }

    public static void fichas( Activity a , View view )
    {
        Intent i = new Intent( a , actFicha.class );
        a.startActivity(i);

    }

    public static void consultar( Activity a , View view )
    {
        Intent i = new Intent( a , actConsultaFichas.class );
        a.startActivity(i);
    }

    public static void enviar( Activity a , View view )
    {
        Intent i = new Intent( a , actEnvia.class );
        a.startActivity(i);

    }

    public static void admin(  Activity a , View view )
    {
        Intent i = new Intent( a , actAdmin.class );
        a.startActivity(i);

    }
    public static void importacao( Activity a , View view )
    {
        Intent i = new Intent( a , actImportacao.class );
        a.startActivity(i);
    }
    public static void config( Activity a , View view )
    {
        Intent i = new Intent( a, actConfig.class);
        a.startActivity(i);

    }

    public static void processaMenu(Activity a, int id) {
        switch (id) {

            case R.id.act_sobre: {
                diversos.sobre(a );
                break;
            }
            case R.id.act_fichas:
            {
                diversos.fichas(a,null);
                break;
            }
            case R.id.act_sair:
            {
                diversos.sair( a );
                break;
            }
            case R.id.act_config:
            {
                config(a, null );
                break;
            }
            case R.id.act_importacao:
            {
                importacao(a,null);
                break;
            }
            default:{
                mensagem.msg(a,a.getString(R.string.msg_nao_implementado));
            }

        }
    }

    public static void sobre(Activity activity) {
        mensagem.alerta(activity,   activity.getString(R.string.msg_sobre) + "\n versão " + activity.getString(R.string.versao),
                                    activity.getString( R.string.act_sobre ), R.drawable.logotipo);

    }

    public static void sair(final Activity activity) {
        mensagem.confirma(activity, activity.getString(R.string.msg_que_sair),
                new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        activity.finish();
                    }
                }

        );

    }
}
