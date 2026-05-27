.class public final Lemn;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/intentlaunch/IntentRouter"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lemn;->a:Lnak;

    return-void
.end method

.method public static final a(Landroid/content/Intent;ZLandroid/app/Activity;Lgzn;)V
    .locals 1

    invoke-virtual {p2}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "launch_unknown_mode"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string p1, "assistant_voice_interaction"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    invoke-static {p0}, Lcdg;->k(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lgzd;->p:Lgzr;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static final b(Landroid/content/Intent;Landroid/app/Activity;Lmrl;Lkha;)Lmqp;
    .locals 4

    invoke-static {p0}, Lcdg;->d(Landroid/content/Intent;)Lika;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    const-string v1, "com.google.assistant.extra.CAMERA_MODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "android.intent.extra.STILL_IMAGE_MODE"

    if-nez v2, :cond_1

    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto/16 :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcdh;->a:Lmwa;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmwa;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcdh;->b:Lmwa;

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmwa;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_3
    move-object p0, v0

    check-cast p0, Lmqt;

    iget-object p0, p0, Lmqt;->a:Ljava/lang/Object;

    check-cast p0, Lika;

    invoke-interface {p2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmwa;

    invoke-virtual {v1, p0}, Lmwa;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmwa;

    invoke-virtual {p1, p0}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcdg;->o(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, p3, Lkha;->a:Lklj;

    sget-object p1, Lklv;->a:Lklv;

    invoke-interface {p0, p1}, Lklj;->e(Lklv;)Lkll;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p3, Lkha;->a:Lklj;

    invoke-interface {p1, p0}, Lklj;->a(Lkll;)Lkli;

    move-result-object p0

    invoke-interface {p0}, Lkli;->C()Z

    move-result p0

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    sget-object p0, Lmpx;->a:Lmpx;

    return-object p0

    :cond_7
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_2
    return-object v0
.end method

.method public static final c(Lmqp;Landroid/content/Intent;Lhzh;Loiw;Ljew;Landroid/app/Activity;Lfbz;Lcvr;Lmrl;Lgzn;Lkha;)Lmqp;
    .locals 0

    invoke-static {p1}, Lemn;->e(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lmqp;->g()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lemn;->a:Lnak;

    invoke-virtual {p0}, Lnaf;->c()Lnaz;

    move-result-object p0

    const-string p1, "the mode is unknown or unsupported"

    const/16 p2, 0x63c

    invoke-static {p0, p1, p2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object p0, Lmpx;->a:Lmpx;

    return-object p0

    :cond_0
    sget-object p2, Lemn;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lika;

    invoke-virtual {p3}, Lika;->name()Ljava/lang/String;

    move-result-object p3

    const-string p4, "launch mode: %s"

    const/16 p6, 0x63b

    invoke-static {p2, p4, p3, p6}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    invoke-virtual {p5}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "com.google.assistant.extra.CAMERA_MODE"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p3, p2}, Lcdg;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "android.intent.extra.STILL_IMAGE_MODE"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p3, p2}, Lcdg;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {p5}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_3

    invoke-static {p1, p3}, Lemn;->f(Landroid/content/Intent;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p4, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    const/4 p6, 0x0

    invoke-virtual {p2, p4, p6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lemn;->f(Landroid/content/Intent;Z)V

    :goto_1
    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lika;

    invoke-virtual {p2}, Lika;->ordinal()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    invoke-virtual {p5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcdg;->j(Landroid/content/Intent;)Z

    move-result p2

    invoke-static {p1, p2, p5}, Lemn;->i(Landroid/content/Intent;ZLandroid/app/Activity;)V

    invoke-static {p1, p5}, Lemn;->h(Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_3

    :sswitch_1
    invoke-virtual {p5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcdg;->j(Landroid/content/Intent;)Z

    move-result p2

    invoke-static {p1, p2, p5}, Lemn;->i(Landroid/content/Intent;ZLandroid/app/Activity;)V

    invoke-static {p1, p5}, Lemn;->h(Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-static {p1, p5}, Lemn;->g(Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_3

    :sswitch_2
    invoke-static {p1, p5}, Lemn;->h(Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_3

    :sswitch_3
    invoke-virtual {p5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcdg;->j(Landroid/content/Intent;)Z

    move-result p2

    invoke-static {p1, p2, p5}, Lemn;->i(Landroid/content/Intent;ZLandroid/app/Activity;)V

    goto :goto_3

    :sswitch_4
    invoke-virtual {p5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcdg;->o(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1, p3, p5}, Lemn;->i(Landroid/content/Intent;ZLandroid/app/Activity;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcdg;->j(Landroid/content/Intent;)Z

    move-result p2

    invoke-static {p1, p2, p5}, Lemn;->i(Landroid/content/Intent;ZLandroid/app/Activity;)V

    :goto_2
    invoke-static {p1, p5}, Lemn;->h(Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-static {p1, p5}, Lemn;->g(Landroid/content/Intent;Landroid/app/Activity;)V

    :goto_3
    const-string p2, "launch_unknown_mode"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p1}, Lemn;->e(Landroid/content/Intent;)V

    sget-object p0, Lmpx;->a:Lmpx;

    :cond_5
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public static final d(Lika;Lhzh;Loiw;Ljew;Landroid/app/Activity;Lfbz;Lcvr;)Z
    .locals 7

    sget-object v1, Lika;->k:Lika;

    invoke-virtual {p0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lhzh;->b()Lnou;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lika;->s:Lika;

    invoke-virtual {p0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljew;->I(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Licr;

    invoke-virtual {v1}, Licr;->b()Lmbe;

    move-result-object v1

    invoke-virtual {v1}, Lmbe;->c()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lika;->j:Lika;

    invoke-virtual {p0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljew;->G(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Licr;

    invoke-virtual {v1}, Licr;->b()Lmbe;

    move-result-object v1

    invoke-virtual {v1}, Lmbe;->a()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lemn;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v4, "Attempted to launch unsupported external activity!"

    const/16 v5, 0x63f

    invoke-static {v1, v4, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {p4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    if-nez v4, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_4
    goto :goto_1

    :sswitch_0
    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_1
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    const-string v6, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x1

    goto :goto_3

    :pswitch_0
    const/16 v2, 0x9

    goto :goto_3

    :pswitch_1
    const/16 v2, 0xa

    goto :goto_3

    :pswitch_2
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p4}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v4

    if-eq v3, v4, :cond_5

    const/4 v5, 0x7

    goto :goto_4

    :cond_5
    :goto_4
    invoke-virtual {p6}, Lcvr;->B()Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-static {p0}, Lijy;->e(Lika;)I

    move-result v0

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    const/4 v6, 0x1

    move-object p0, p5

    move p1, v2

    move p2, v5

    move p3, v0

    move p4, v4

    move p5, v3

    move p6, v6

    invoke-interface/range {p0 .. p6}, Lfbz;->at(IIIZZZ)V

    :cond_6
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1ba9c1af -> :sswitch_2
        0x1cf71807 -> :sswitch_1
        0x43680478 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final e(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "com.google.assistant.extra.CAMERA_MODE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "com.google.assistant.extra.USE_FRONT_CAMERA"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "com.google.assistant.extra.CAMERA_FLASH_MODE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.STILL_IMAGE_MODE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.FRONT_CAMERA"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method private static final f(Landroid/content/Intent;Z)V
    .locals 2

    const-string v0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcdg;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final g(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.assistant.extra.CAMERA_FLASH_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget v2, Lcdg;->a:I

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcdh;->c:Lmwa;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lmwa;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, v0}, Lcdg;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "launch_unknown_mode"

    invoke-static {p0, v0, p1}, Lcdg;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static final h(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcdg;->b(Landroid/content/Intent;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    invoke-static {p0, v0, p1}, Lcdg;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final i(Landroid/content/Intent;ZLandroid/app/Activity;)V
    .locals 0

    invoke-virtual {p2}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "com.google.assistant.extra.USE_FRONT_CAMERA"

    invoke-static {p0, p2, p1}, Lcdg;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "android.intent.extra.FRONT_CAMERA"

    invoke-static {p0, p2, p1}, Lcdg;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-static {p0, p2, p1}, Lcdg;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
