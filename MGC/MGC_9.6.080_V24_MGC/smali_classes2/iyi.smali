.class public Liyi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:Lsdb;


# instance fields
.field public final a:Landroid/app/Activity;

.field private final c:Lnch;

.field private final d:Lrtm;

.field private final e:Lrtm;

.field private final f:Lpiz;

.field private final g:Llyv;

.field private final h:Lmjv;

.field private final i:Lfdn;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Landroid/content/Intent;)V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v2, Lfwu;->c:Lryh;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "launch_unknown_mode"

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, p0}, Lryh;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v2, :cond_2

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    :goto_15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xe

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1c
    const-string v1, "com.google.assistant.extra.CAMERA_FLASH_MODE"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1, v0, p0}, Lfwt;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_12

    nop

    :goto_21
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p1, v1, v0}, Lfwt;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Landroid/content/Intent;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-static {p1, v0, p0}, Lfwt;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lfwt;->b(Landroid/content/Intent;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "iyi"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    sput-object v0, Liyi;->b:Lsdb;

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

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    nop

    nop
.end method

.method public constructor <init>(ZZZLnch;Landroid/app/Activity;Lmjv;Lfdn;Lpiz;Llyv;Lrtm;)V
    .locals 0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    iput-object p1, p0, Liyi;->d:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    invoke-static {p4}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object p1

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

    :goto_3
    iput-object p10, p0, Liyi;->e:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p4, Liyh;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p4, p1, p2, p3}, Liyh;-><init>(ZZZ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p8, p0, Liyi;->f:Lpiz;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iput-object p7, p0, Liyi;->i:Lfdn;

    nop

    nop

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

    :goto_8
    iput-object p4, p0, Liyi;->c:Lnch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p9, p0, Liyi;->g:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    iput-object p6, p0, Liyi;->h:Lmjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Landroid/content/Intent;Z)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const-string p2, "android.intent.extra.FRONT_CAMERA"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p2, p0}, Lfwt;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    invoke-static {p1, p2, p0}, Lfwt;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const-string p2, "android.intent.extra.USE_FRONT_CAMERA"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

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
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, p2, p0}, Lfwt;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    :goto_c
    const-string p2, "com.google.assistant.extra.USE_FRONT_CAMERA"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final h(Landroid/content/Intent;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "android.intent.extra.FRONT_CAMERA"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "android.intent.extra.USE_FRONT_CAMERA"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    :goto_3
    const-string v0, "android.intent.extra.STILL_IMAGE_MODE"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "com.google.assistant.extra.CAMERA_MODE"

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    const-string v0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "com.google.assistant.extra.USE_FRONT_CAMERA"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_b
    const-string v0, "com.google.assistant.extra.CAMERA_FLASH_MODE"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "android.intent.extra.TIMER_DURATION_SECONDS"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop
.end method

.method private static final i(Landroid/content/Intent;Z)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const-string v0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-static {p0, v0, p1}, Lfwt;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_c

    nop
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lrss;
    .locals 4

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lfwt;->o(Landroid/content/Intent;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v1}, Lryh;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lrsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Liyi;->f:Lpiz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_7
    sget-object v1, Lpog;->a:Lpog;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lrsa;->a:Lrsa;

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

    nop

    nop

    :goto_b
    invoke-virtual {v1, p1}, Lryh;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lryh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_d
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_10
    move-object p1, v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "com.google.assistant.extra.CAMERA_MODE"

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v3, "android.intent.extra.STILL_IMAGE_MODE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    invoke-interface {p0}, Lpnu;->D()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v1}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1, v1}, Lpnv;->e(Lpog;)Lpnx;

    move-result-object p1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1f
    const/4 p0, 0x1

    nop

    :goto_20
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_20

    nop

    nop

    :goto_22
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, p0, Liyi;->d:Lrtm;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_25
    goto/32 :goto_f

    nop

    nop

    :goto_26
    iget-object p0, p0, Liyi;->d:Lrtm;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_29
    return-object v0

    nop

    nop

    :goto_2a
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, p1}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Liyi;->f:Lpiz;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p1}, Lfwt;->d(Landroid/content/Intent;)Lnne;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, p1, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_33
    invoke-static {p0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_35
    if-nez p0, :cond_4

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    :goto_36
    iget-object p0, p0, Lpiz;->a:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v2, Lfwu;->a:Lryh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {p0, p1}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_5
    :goto_3b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v1, Lfwu;->b:Lryh;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p1, p1, Lpiz;->a:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    :goto_3f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1, p1}, Lryh;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_42
    goto :goto_3f

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v1, Lryh;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_46
    if-nez p1, :cond_7

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_7
    :goto_47
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_9
    goto/32 :goto_8

    nop

    :goto_4a
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_40

    nop

    nop
.end method

.method public final b(Lrss;Landroid/content/Intent;)Lrss;
    .locals 4

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    :cond_2
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_3

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_3
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p2, v0}, Liyi;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/content/Intent;Z)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p1, "the mode is unknown or unsupported"

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_9
    invoke-static {p2, v1}, Liyi;->i(Landroid/content/Intent;Z)V

    goto/32 :goto_4d

    nop

    nop

    :goto_a
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p2, v0}, Liyi;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/content/Intent;Z)V

    :goto_c
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "android.intent.extra.STILL_IMAGE_MODE"

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_10
    const-string p0, "launch_unknown_mode"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p2}, Liyi;->23ce148e54b083367f51e25c7971761em(Landroid/content/Intent;)V

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_5
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    if-ne v0, v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_17
    const/16 v1, 0xa

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_7

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

    :cond_7
    goto/32 :goto_22

    nop

    :goto_19
    invoke-static {v0}, Lfwt;->j(Landroid/content/Intent;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Liyi;->b:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, p2}, Liyi;->7ecc92917e9c4556cc19f457ddc41af8m(Landroid/content/Intent;)V

    goto/32 :goto_20

    nop

    nop

    :goto_1c
    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne v0, v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_8
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p2, v1, v0}, Lfwt;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, p2}, Liyi;->23ce148e54b083367f51e25c7971761em(Landroid/content/Intent;)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_22
    goto/32 :goto_36

    nop

    :goto_23
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_25
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

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

    nop

    nop

    :goto_2b
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_2c
    invoke-static {v0}, Lfwt;->j(Landroid/content/Intent;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v2, "launch mode: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {p2, v1, v0}, Lfwt;->g(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_30
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0, p2}, Liyi;->7ecc92917e9c4556cc19f457ddc41af8m(Landroid/content/Intent;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v1, Lnne;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p2}, Liyi;->h(Landroid/content/Intent;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_37
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_38
    invoke-static {p2, v0}, Liyi;->i(Landroid/content/Intent;Z)V

    :goto_39
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_3c
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_40
    invoke-direct {p0, p2, v1}, Liyi;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/content/Intent;Z)V

    goto/32 :goto_6a

    nop

    nop

    :goto_41
    if-nez p0, :cond_9

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_9
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p0, p2, v0}, Liyi;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/content/Intent;Z)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    return-object p0

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Lnne;->ordinal()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_48
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0}, Lfwt;->j(Landroid/content/Intent;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4c
    invoke-static {v0}, Lfwt;->o(Landroid/content/Intent;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4d
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_30

    nop

    nop

    :goto_51
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {p2}, Liyi;->h(Landroid/content/Intent;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_54
    check-cast v0, Lnne;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_55
    const/16 p1, 0x7d5

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_57
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_58
    const-string v2, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_83

    nop

    nop

    :goto_5b
    const/4 v3, 0x0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v1}, Lnne;->name()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5d
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    sget-object p0, Liyi;->b:Lsdb;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {p0, p2}, Liyi;->7ecc92917e9c4556cc19f457ddc41af8m(Landroid/content/Intent;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_60
    const/4 v1, 0x6

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v0}, Lfwt;->j(Landroid/content/Intent;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_31

    nop

    nop

    :goto_64
    if-ne v0, v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {v0, v2, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_37

    nop

    nop

    :goto_6f
    invoke-direct {p0, p2, v0}, Liyi;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/content/Intent;Z)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_70
    const/16 v1, 0x7d4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_71
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-direct {p0, p2}, Liyi;->7ecc92917e9c4556cc19f457ddc41af8m(Landroid/content/Intent;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/4 v1, 0x3

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_76
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_77
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_79
    const-string v1, "com.google.assistant.extra.CAMERA_MODE"

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_7b
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_23

    nop

    nop

    :goto_7d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_7f
    if-ne v0, v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_60

    nop

    nop

    :goto_80
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_83
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method public final c(Landroid/content/Intent;Z)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p1, Llyr;->t:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_6
    invoke-static {p1}, Lfwt;->k(Landroid/content/Intent;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Liyi;->g:Llyv;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    const-string p2, "launch_unknown_mode"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    :goto_12
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1, p2}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    const-string p2, "assistant_voice_interaction"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Liyi;->a:Landroid/app/Activity;

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

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lnne;)Z
    .locals 13

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v4, v5}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    :goto_4
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_55

    nop

    nop

    :goto_5
    iget-object v3, p0, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Liyi;->e:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v3, 0x7d8

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move v1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    move v6, v2

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v3, v0}, Lncf;-><init>(Lnch;)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v10

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1e

    nop

    nop

    :goto_11
    move v6, v1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4d

    nop

    nop

    :goto_13
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_56

    nop

    nop

    :goto_15
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_16
    iget-object v5, p0, Liyi;->h:Lmjv;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v3, Lncf;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_1f

    nop

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_46

    nop

    nop

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    :goto_1e
    const/4 v1, -0x1

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Liyi;->i:Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_21
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v0, Liyi;->b:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_23
    const v1, 0x1cf71807

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_4

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v1, 0x0

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_28
    new-instance v5, Lmiv;

    nop

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

    :goto_29
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0, v3}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_45

    nop

    nop

    :goto_2d
    if-ne v1, v7, :cond_6

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    :goto_2e
    sget-object v3, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->ezsBANgsNXjf:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2f
    const v6, 0x1ba9c1af

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_30
    invoke-direct {v5, v0, v3, v6}, Lmiv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    goto/32 :goto_19

    nop

    nop

    :goto_32
    move v0, v2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v4, v0, Lnch;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string v1, "android.media.action.VIDEO_CAMERA"

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_37
    invoke-virtual/range {v5 .. v12}, Lmjv;->G(IILsob;ZZZZ)V

    :goto_38
    goto/32 :goto_40

    nop

    nop

    :goto_39
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3c
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v6, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return v0

    nop

    :goto_41
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v3, v0, Lnch;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-ne v5, v6, :cond_7

    nop

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

    :cond_7
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_45
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p1}, Lnnb;->b(Lnne;)Lsob;

    move-result-object v8

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v0, Lnne;->j:Lnne;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_29

    nop

    nop

    :goto_4b
    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_4c
    if-ne v5, v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v1, p0, Liyi;->a:Landroid/app/Activity;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_4e
    move v6, v4

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v1}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_50
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_51
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_53
    const v1, 0x43680478

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_54
    check-cast v4, Lowu;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move v1, v2

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v0, p0, Liyi;->c:Lnch;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-ne v2, v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_9
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-eqz v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    :cond_a
    :goto_5a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v1}, Lfdn;->n()Landroid/app/KeyguardManager;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5d
    const/4 v2, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5f
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_60
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_63
    invoke-interface {p0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_64
    if-ne v1, v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_65
    const/4 v4, 0x7

    nop

    nop

    :goto_66
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1, v0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_68
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_51

    nop

    nop

    :goto_6a
    goto/16 :goto_1f

    nop

    :goto_6b
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_6c
    if-nez v1, :cond_c

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6d
    const/16 v4, 0x9

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_6e
    if-ne v5, v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_6f
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method
