.class public final Lcom/google/android/libraries/phenotype/client/stable/AccountRemovedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    goto/32 :goto_4a

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/phenotype/client/stable/AccountRemovedBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Lqvl;->b()Lsul;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v5, v2, p2, v6, v0}, Lpzy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    :goto_6
    const/16 v6, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_a
    goto :goto_8

    nop

    :goto_b
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    :goto_d
    const-string v1, "com.google.work"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_11
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_34

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2, p0}, Lkjj;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lsui;

    :goto_15
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_55

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_18
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    new-array v3, v1, [Lsui;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v6, 0x10

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_4
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v5, Lpzy;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1d
    invoke-virtual {v4, v5, v6}, Lrbs;->b(Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1e
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_53

    nop

    nop

    :goto_20
    invoke-direct {p2, p0, v0}, Lmaq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aput-object p1, v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v2}, Lqxh;->b(Lqvl;)Lrbs;

    move-result-object v4

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_24
    const/16 v5, 0xc

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_13

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Lqvl;->b()Lsul;

    move-result-object v0

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_27
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    const-string v1, "AccountRemovedRecv"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0, v2}, Lsul;->a(Ljava/lang/Runnable;)Lsui;

    move-result-object p1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_6
    :goto_2b
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2}, Lqvl;->b()Lsul;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2e
    invoke-static {v4, v5, v0}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_7
    goto/32 :goto_3c

    nop

    nop

    :goto_30
    const-string v1, "__logged_out_type"

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v3}, Lsgj;->ac([Lsui;)Lkjj;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v4}, Lsub;->q(Lsui;)Lsub;

    move-result-object v4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_35
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v0, v6, v4, v5}, Lsrv;->i(Lsui;Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const-string v2, "/.."

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v5, p2, v6}, Lqby;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_48

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 p2, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3c
    const-string v1, "com.google"

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v1, "cn.google"

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v0, :cond_8

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1e

    nop

    nop

    :goto_3f
    invoke-direct {v4, v5}, Lqkq;-><init>(I)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {p1}, Lqvl;->a(Landroid/content/Context;)Lqvl;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_42
    aput-object v0, v3, v4

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_43
    if-nez p2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_9
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_44
    invoke-static {p2, p0, p1}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_47
    sget-object p1, Lsue;->a:Lsui;

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_49
    if-eqz v1, :cond_a

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4a
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-lez v0, :cond_b

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_b
    goto/32 :goto_12

    nop

    :goto_4c
    const-string v2, "../"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_4d
    goto :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_50
    sget-object v5, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_51
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const-string v0, "accountType"

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_54
    const-string p0, "Did not set PhenotypeContext before Account Removed Broadcast. Exiting."

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_55
    const-string v1, "authAccount"

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_56
    invoke-static {}, Lqvl;->c()V

    goto/32 :goto_40

    nop

    nop

    :goto_57
    sget-object v0, Lsue;->a:Lsui;

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_59
    if-nez p2, :cond_c

    nop

    goto/32 :goto_4e

    nop

    :cond_c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v1, 0x2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5b
    new-instance v2, Lqtz;

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_5c
    sget-object v0, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->uEUmBARpHNX:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_5e
    const-string p1, ". Exiting."

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v2, p1, p2, v1}, Lqtz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_61
    const-string p0, "Got an invalid account name for P/H that includes \'..\':"

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_62
    move-object p2, v0

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_64
    new-instance p2, Lmaq;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_67
    const/16 v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    new-instance v4, Lqkq;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_69
    const-class v6, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_6a
    new-instance v5, Lqby;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_6c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-eqz v2, :cond_d

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop
.end method
