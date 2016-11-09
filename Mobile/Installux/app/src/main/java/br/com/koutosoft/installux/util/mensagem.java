package br.com.koutosoft.installux.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.Toast;
import br.com.koutosoft.installux.R;

import static br.com.koutosoft.installux.R.drawable.*;

/**
 * Created by Koutosoft on 21/05/2015.
 */
public class mensagem {

    public static void  msg( Activity a , String msg )
    {
        Toast.makeText( a, msg, Toast.LENGTH_SHORT).show();
    }

    public static void alerta( Activity a , String msg , String titulo, int Icone)
    {
        AlertDialog.Builder al = new AlertDialog.Builder(a);
        al.setTitle(titulo);
        al.setMessage(msg);
        al.setNeutralButton("OK", null);
        al.setIcon(Icone);
        al.show();

    }

    public static void erro( Activity a , String msg )
    {
        alerta( a , msg , "Erro" , img_error);
    }

    public static void alerta( Activity a , String msg, String titulo) {
        alerta(a, msg, titulo, img_alert);
    }

    public static void confirma(Activity a , String msg ,
                                DialogInterface.OnClickListener listenerSim   )
    {
        confirma( a , msg,listenerSim, null );

    }

    public static void confirma( Activity a , String msg ,
                                 DialogInterface.OnClickListener listenerSim ,
                                 DialogInterface.OnClickListener listenerNao ) {
        AlertDialog.Builder al = new AlertDialog.Builder(a);
        al.setMessage(msg);
        al.setIcon(img_question);
        al.setNegativeButton("Nao", listenerNao);
        al.setPositiveButton("Sim", listenerSim);
        al.show();

    }


}
