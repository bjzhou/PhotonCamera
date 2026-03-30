.class public Lcom/pairip/application/Application;
.super Lcom/google/android/apps/camera/legacy/app/app/CameraApp;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method protected attach(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lcom/pairip/application/Application;->attach(Landroid/content/Context;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lcom/pairip/VMRunner;->setContext(Landroid/content/Context;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lcom/pairip/SignatureCheck;->verifyIntegrity(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p1}, Lcom/RamPatcher;-><init>(Landroid/content/Context;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    invoke-static {p1}, Lcom/pairip/SignatureCheck;->verifyIntegrity(Landroid/content/Context;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    new-instance v0, Lcom/b;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v2, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-super {p0, p1}, Lcom/pairip/application/Application;->attachBaseContext(Landroid/content/Context;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    :goto_f
    :try_start_0
    const-string v0, "QoDSk47R2Z3Q1E4Sjs_Nwf7NPj8DjN7JhtDT"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    const-string v1, "SI4="

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    const/4 v2, 0x1

    nop

    new-array v3, v2, [Ljava/lang/Class;

    nop

    nop

    nop

    const-class v4, Ljava/lang/Object;

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    aput-object v4, v3, v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    aput-object p1, v2, v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sput-object v0, Lcom/a;->rp:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_16

    nop

    :cond_1
    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Lcom/pairip/VMRunner;->setContext(Landroid/content/Context;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Lcom/b;-><init>()V

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_1b
    const-string v1, "pref_disable_log_key"

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    new-instance v0, Lcom/RamPatcher;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
