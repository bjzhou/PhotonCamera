.class L_017;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field a:L_016;


# direct methods
.method constructor <init>(L_016;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, L_017;->a:L_016;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static FVmiZgerSkvKPFlr(J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static ISZoqXqtTBXxTgrn(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static KVZmWKLOzfNQaWVQ(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static SIypKjfIoeIVmBxX(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static SpnhaxhXAiLoGSZf(Landroid/app/Application;)Landroid/content/Context;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static XOCSHIlZHOaiEltm(L_016;)Ljava/io/File;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, L_016;->getFileSharedPreferences()Ljava/io/File;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static ooodRPkGiaytsiQR()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static qvwtmBUZYbtyRQoy(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static trHjXJemCFgwiSCp()Landroid/app/Application;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static uPsqTMPkwdPmWOKh(L_016;Ljava/io/File;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, L_016;->a(Ljava/io/File;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static zjxHcoeKJMXDlPFb(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    const-wide v0, 0x100

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_3
    invoke-static {}, L_017;->ooodRPkGiaytsiQR()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v1, 0x10000000

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v2}, L_017;->zjxHcoeKJMXDlPFb(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, L_017;->qvwtmBUZYbtyRQoy(Landroid/content/Intent;I)Landroid/content/Intent;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2, v0}, L_017;->SIypKjfIoeIVmBxX(Landroid/content/Context;Landroid/content/Intent;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, L_017;->trHjXJemCFgwiSCp()Landroid/app/Application;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    const-string v0, "Clear: onReinit"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-class v1, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    const v0, 0xb

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, L_017;->ISZoqXqtTBXxTgrn(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, L_017;->a:L_016;

    nop

    nop

    nop

    invoke-static {v0}, L_017;->XOCSHIlZHOaiEltm(L_016;)Ljava/io/File;

    move-result-object v1

    nop

    invoke-static {v0, v1}, L_017;->uPsqTMPkwdPmWOKh(L_016;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Landroid/content/Intent;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, L_017;->KVZmWKLOzfNQaWVQ(Landroid/content/Intent;I)Landroid/content/Intent;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static/range {v0 .. v0}, L_017;->SpnhaxhXAiLoGSZf(Landroid/app/Application;)Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    const v1, 0x8000

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v1}, L_017;->FVmiZgerSkvKPFlr(J)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
