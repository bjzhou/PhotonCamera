.class public Lcom/google/lens/sdk/LensApi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Landroid/net/Uri;

.field public static final synthetic d:I


# instance fields
.field public final b:Landroid/app/KeyguardManager;

.field public final c:Landroidx/wear/ambient/AmbientDelegate;

.field private final e:Lpvl;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m(Ljava/lang/String;)Z
    .locals 6

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    if-lt v3, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lt p0, p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lpvl;->f:Lpvs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_8
    return v2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    array-length v2, p1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    :goto_19
    const-string v0, "\\."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lt v4, v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aget-object v4, p0, v3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v3, v2

    nop

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1f
    array-length p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    array-length p1, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    return v1

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    aget-object v5, p1, v3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

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

    :goto_25
    if-gt v4, v5, :cond_5

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return v1

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_28
    const v0, 0xd

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Lpvs;->d:Ljava/lang/String;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2a
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2b
    array-length v0, p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->e:Lpvl;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    sput-object v0, Lcom/google/lens/sdk/LensApi;->a:Landroid/net/Uri;

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
    const-string v0, "googleapp://lens"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    nop

    :goto_2
    new-instance v1, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p1}, Lpvl;-><init>(Landroid/content/Context;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Lpvl;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    check-cast v0, Landroid/app/KeyguardManager;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "keyguard"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_1

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lcom/google/lens/sdk/LensApi;->b:Landroid/app/KeyguardManager;

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

    :goto_d
    new-instance v0, Lpvl;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, p1, v0}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/content/Context;Lpvl;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->b:Landroid/app/KeyguardManager;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p2, p0}, Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;->onLaunchStatusFetched(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, "LensApi"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    new-instance p1, Ljava/lang/StringBuilder;

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

    nop

    :goto_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/lens/sdk/LensApi;->b(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    if-nez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p2, p0}, Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;->onLaunchStatusFetched(I)V

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string p3, "Cannot start Lens when device is locked with Android "

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    :goto_19
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_10

    nop

    nop
.end method

.method public static final f(Landroid/app/Activity;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1e

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const-string v1, "android.intent.action.VIEW"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lcom/google/lens/sdk/LensApi;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Landroid/content/Intent;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ltii;)V
    .locals 8

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/lens/sdk/LensApi;->c(Ltii;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v6, p2, Ltii;->d:Ltib;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->ai()I

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct/range {v2 .. v7}, Ltii;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/Long;Ltib;Ljava/lang/Integer;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v7, p2, Ltii;->e:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v3, p2, Ltii;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    move-object v4, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0xf

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    new-instance p2, Ltii;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v5, p2, Ltii;->c:Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    const v1, 0xb

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

    nop

    nop
.end method

.method public final b(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p3, p2}, Ltig;-><init>(Ljava/lang/Runnable;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ltig;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->b:Landroid/app/KeyguardManager;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ltii;)V
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3
    or-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4
    check-cast v0, Lnxw;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_5
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroidx/wear/ambient/AmbientDelegate;->ag(Landroid/os/Bundle;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_36

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_16

    nop

    nop

    :goto_18
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lpvr;->k()Z

    move-result v0

    nop

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

    nop

    :goto_1a
    check-cast v0, Ltkd;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    iput v2, v1, Lnxw;->c:I

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2d

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_20
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v1, Lnxw;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, v1}, Ltii;->a(Lnyc;)Landroid/os/Bundle;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_24
    const v0, 0xd

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_25
    iget-object v1, v0, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_26
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v0, Lpvr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string p1, "LensServiceBridge"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v1, p1}, Lnxu;-><init>(Landroid/os/Parcelable;)V

    :try_start_0
    iget-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-virtual {v0}, Ltis;->h()[B

    move-result-object v0

    nop

    check-cast p1, Lpvr;

    nop

    invoke-virtual {p1, v0, v1}, Lpvr;->e([BLnxu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2a
    new-instance v1, Lnxu;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Ltii;->b()Landroid/os/Bundle;

    move-result-object p1

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2d
    iget-object v0, p1, Ltii;->a:Landroid/net/Uri;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->ae()Lnyc;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p1, Ltii;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_31
    const-string v0, "Failed to start Lens"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_32
    const/16 v2, 0x163

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_33
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->ae()Lnyc;

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput v2, v1, Lnxw;->b:I

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

    :goto_36
    goto/32 :goto_1e

    nop

    :goto_37
    const-string p0, "LensApi"

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {}, Lpuq;->y()V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3a
    iget v2, v1, Lnxw;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v0, Lnxw;->a:Lnxw;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3c
    const-string p1, "Failed to start lens."

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast p0, Lpvr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Lpvr;->f()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public checkArStickersAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xc

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->e:Lpvl;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lpvl;->a(Lpvj;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ltih;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p1, v1}, Ltih;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_2

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

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
.end method

.method public checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lpvl;->a(Lpvj;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->e:Lpvl;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Lcom/google/lens/sdk/LensApi;->19e596a3e324281407eb5c11093c0152m(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1, p0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    goto/32 :goto_7

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->b:Landroid/app/KeyguardManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    const-string v0, "8.3"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ltih;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    invoke-direct {v0, p1, v1}, Ltih;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xf

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

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_12
    const/4 p0, 0x6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public checkPendingIntentAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p0, v0, v1}, Lpvm;-><init>(Landroidx/wear/ambient/AmbientDelegate;Lpvn;I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    invoke-direct {v0, p1, v1}, Ltif;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;I)V

    goto/32 :goto_16

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "9.72"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, p0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    new-instance p1, Lpvm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    const/16 v4, 0x350

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    :goto_13
    const/4 p0, 0x6

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v0}, Lcom/google/lens/sdk/LensApi;->19e596a3e324281407eb5c11093c0152m(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ltif;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientDelegate;->ah(Lpvn;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->b:Landroid/app/KeyguardManager;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public checkPostCaptureAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lpvm;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientDelegate;->ah(Lpvn;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ltif;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->b:Landroid/app/KeyguardManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1, p0, v0, v1}, Lpvm;-><init>(Landroidx/wear/ambient/AmbientDelegate;Lpvn;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, p0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    goto/32 :goto_c

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_13
    const v0, 0x20

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "8.19"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, p1, v1}, Ltif;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    invoke-static {}, Lpuq;->y()V

    goto/32 :goto_2

    nop

    nop

    :goto_18
    invoke-direct {p0, v0}, Lcom/google/lens/sdk/LensApi;->19e596a3e324281407eb5c11093c0152m(Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/graphics/Bitmap;Ltii;)Z
    .locals 9

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct/range {v3 .. v8}, Ltii;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/Long;Ltib;Ljava/lang/Integer;)V

    goto/32 :goto_9

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const-string p0, "Cannot start Lens with Bitmap when device is locked."

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_15

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v5, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "launchLensActivityWithBitmap: bitmap should not be null."

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p2}, Lcom/google/lens/sdk/LensApi;->c(Ltii;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_b
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lcom/google/lens/sdk/LensApi;->b:Landroid/app/KeyguardManager;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v6, p2, Ltii;->c:Ljava/lang/Long;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_10
    iget-object v8, p2, Ltii;->e:Ljava/lang/Integer;

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

    :goto_11
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->ai()I

    move-result v0

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

    :goto_12
    new-instance p2, Ltii;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v2

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

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

    :goto_1a
    if-ne v0, v1, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "LensApi"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    const/4 p0, 0x1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    iget-object v4, p2, Ltii;->a:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_23
    move-object v3, p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    goto/32 :goto_d

    nop

    nop

    :goto_26
    iget-object v7, p2, Ltii;->d:Ltib;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final e(Ltii;Lcom/google/lens/sdk/PendingIntentConsumer;)Z
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1
    iput v1, v0, Lnxw;->b:I

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/wear/ambient/AmbientDelegate;->ag(Landroid/os/Bundle;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p2, Ltkd;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Lpvr;->k()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_8
    const v0, 0x18

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Lpuq;->y()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    check-cast p2, Lpvr;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lnxu;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->aj()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ltii;->b()Landroid/os/Bundle;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    const-string p2, "Failed to send Lens service client event"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Ltkb;->o()V

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    or-int/2addr v1, v3

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

    :goto_19
    invoke-direct {v0, p1}, Lnxu;-><init>(Landroid/os/Parcelable;)V

    :try_start_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    invoke-virtual {p2}, Ltis;->h()[B

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p0, Lpvr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, v0}, Lpvr;->e([BLnxu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    const-string p0, "LensApi"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    iput-object p2, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return v3

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1d
    iget v1, v0, Lnxw;->b:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1e
    const/16 v1, 0x19c

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1f
    check-cast v0, Lnxw;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p2, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    return v2

    nop

    nop

    :goto_22
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string p1, "Failed to request pending intent."

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p2, Ltkd;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->ae()Lnyc;

    move-result-object v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_39

    nop

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2a
    const-string p1, "LensServiceBridge"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->ae()Lnyc;

    goto/32 :goto_12

    nop

    nop

    :goto_2d
    iput v1, v0, Lnxw;->c:I

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

    :goto_2e
    goto/32 :goto_29

    nop

    nop

    :goto_2f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_1
    goto/32 :goto_28

    nop

    :goto_30
    invoke-virtual {p2}, Ltkg;->m()Ltkb;

    move-result-object p2

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

    :goto_31
    check-cast p2, Lnxw;

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

    :goto_32
    invoke-virtual {p1, v1}, Ltii;->a(Lnyc;)Landroid/os/Bundle;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_33
    invoke-virtual {p2}, Ltkb;->i()Ltkg;

    move-result-object p2

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

    nop

    :goto_34
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_38
    return v2

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3a
    sget-object p2, Lnxw;->a:Lnxw;

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

    nop

    :goto_3b
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method

.method public launchLensActivity(Landroid/app/Activity;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, v1, v0}, Lcom/google/lens/sdk/LensApi;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lqxb;

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-direct {v0, p1, v1}, Lqxb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    const/16 v1, 0x12

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
.end method

.method public launchLensActivity(Landroid/app/Activity;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    new-instance p0, Landroid/content/Intent;

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

    :goto_1
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    :goto_3
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    :goto_5
    const/16 v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    iget-object p0, p0, Lpvl;->f:Lpvs;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "com.google.vr.apps.ornament.app.MainActivity"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p2, v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p2, p0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    invoke-direct {p2, p1, v0}, Lqxb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget p0, p0, Lpvs;->f:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    new-instance p2, Lqxb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x1

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

    :goto_13
    if-nez p2, :cond_2

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_14
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->e:Lpvl;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string p2, "com.google.ar.lens"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1, v0, p2}, Lcom/google/lens/sdk/LensApi;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    const-string p0, "Invalid lens activity: "

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1b
    const-string p1, "LensApi"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    if-eq p0, p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    :goto_1d
    invoke-static {p0}, Lpuq;->x(I)I

    move-result p0

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

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    :goto_20
    return-void

    nop

    nop
.end method

.method public launchLensActivity(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V
    .locals 7

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, v6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lqxm;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    invoke-direct {v0, p0, p1, v6, v1}, Lqxm;-><init>(Lcom/google/lens/sdk/LensApi;Ljava/lang/Object;Ltii;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x14

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    new-instance v6, Ltii;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v0 .. v5}, Ltii;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/Long;Ltib;Ljava/lang/Integer;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p1, p2, v0}, Lcom/google/lens/sdk/LensApi;->d5484163cd8d335e6b17663474ff5f2bm(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V

    goto/32 :goto_13

    nop

    nop

    :goto_12
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public launchLensActivityWithBitmap(Landroid/graphics/Bitmap;)Z
    .locals 8

    goto/32 :goto_f

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    new-instance v0, Ltii;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v6, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string p1, "Cannot start Lens with Bitmap when device is locked."

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
    goto/32 :goto_3

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1, v0}, Lcom/google/lens/sdk/LensApi;->d(Landroid/graphics/Bitmap;Ltii;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct/range {v2 .. v7}, Ltii;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/Long;Ltib;Ljava/lang/Integer;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->b:Landroid/app/KeyguardManager;

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

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    const-string p0, "LensApi"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v4, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1c
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public launchLensActivityWithBitmapForTranslate(Landroid/graphics/Bitmap;)Z
    .locals 7

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v2, Ltia;->a:Ltia;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1
    iget-object v0, v0, Lpvr;->f:Lnyb;

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v3, Ltib;

    nop

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

    :goto_5
    invoke-virtual {v0}, Lpvr;->l()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, v0, Lnyb;->b:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_7
    const-string p0, "LensApi"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v3, :cond_1

    nop

    goto/32 :goto_3e

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_f
    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Lpvr;->k()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string p1, "Translate is not supported."

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

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

    :goto_17
    sget-object v0, Lnyb;->a:Lnyb;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1c
    and-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1d
    check-cast v0, Lpvr;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

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

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_21
    check-cast v1, Lpvr;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    invoke-direct/range {v1 .. v6}, Ltii;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/Long;Ltib;Ljava/lang/Integer;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, p1, v0}, Lcom/google/lens/sdk/LensApi;->d(Landroid/graphics/Bitmap;Ltii;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_24
    sget-object v0, Ltib;->a:Ltib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v4, 0x0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

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

    :goto_27
    iget-object v0, v0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v5, Ltib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput v1, v3, Ltib;->b:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2c
    invoke-static {}, Lpuq;->y()V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v0, 0x5

    nop

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

    :goto_2e
    invoke-static {v1, v2}, Lpuq;->z(ZLjava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Lpvr;->k()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {}, Lpuq;->y()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v0, Ltii;

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

    nop

    :goto_32
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x13

    nop

    nop

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

    :goto_34
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v1, Lpvr;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return p0

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_19

    nop

    nop

    :goto_3a
    const-string v2, "Attempted to use LensCapabilities before ready."

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3b
    invoke-static {v1, v2}, Lpuq;->z(ZLjava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput-object v2, v3, Ltib;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_3e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const v0, 0x6

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_41
    const-string v2, "getLensCapabilities() called when Lens is not ready."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop
.end method

.method public onPause()V
    .locals 8

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3
    iput-object v5, v1, Lpvr;->e:Lnyc;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_7
    const/16 v7, 0x159

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "Unable to unbind, service is not registered."

    nop

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

    :goto_9
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    iget v7, v6, Lnxw;->b:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    const-string v6, "Unable to end Lens service session."

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Lpvr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    check-cast v2, Lnxw;

    nop

    nop

    nop

    nop

    :try_start_0
    move-object v6, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lpvr;

    nop

    nop

    nop

    iget-object v6, v6, Lpvr;->i:Lnxq;

    nop

    nop

    invoke-static {v6}, Lpuq;->A(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ltis;->h()[B

    move-result-object v2

    nop

    nop

    invoke-virtual {v6, v2}, Lnxq;->e([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v6, v2, Ltkd;->b:Ltkg;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v5, v1, Lpvr;->f:Lnyb;

    nop

    nop

    :goto_11
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v5, v1, Lpvr;->i:Lnxq;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    or-int/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_15
    const/4 v4, 0x1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v7, v6, Lnxw;->c:I

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

    :goto_17
    invoke-virtual {v1}, Lpvr;->l()Z

    move-result v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v4, v1, Lpvr;->g:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v1, v0

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

    :goto_1c
    if-eqz v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    :goto_1d
    check-cast v6, Lnxw;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    sget-object v2, Lnxw;->a:Lnxw;

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

    :goto_1f
    iput v2, v1, Lpvr;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    iget-object v6, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v5, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_26
    const-string v3, "LensServiceConnImpl"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_27
    iput-object v5, v1, Lpvr;->h:Lnxp;

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_2c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v4}, Lpvr;->g(I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto :goto_2a

    nop

    :catch_1
    move-exception v2

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

    :goto_2f
    invoke-static {}, Lpuq;->y()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_31
    const v1, 0x1f

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

    nop

    nop

    :goto_32
    iput v7, v6, Lnxw;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_33
    invoke-static {}, Lpuq;->y()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v2, Ltkd;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_35
    const/4 v5, 0x0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_1
    move-object v2, v0

    nop

    nop

    nop

    nop

    check-cast v2, Lpvr;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lpvr;->b:Landroid/content/Context;

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Lpvr;->i()Z

    move-result v2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop
.end method

.method public onResume()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/lens/sdk/LensApi;->c:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lpvr;->m()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lpuq;->y()V

    goto/32 :goto_0

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

    :goto_4
    check-cast p0, Lpvr;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public requestLensActivityPendingIntent(Lcom/google/lens/sdk/PendingIntentConsumer;)Z
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v6, p1}, Lcom/google/lens/sdk/LensApi;->e(Ltii;Lcom/google/lens/sdk/PendingIntentConsumer;)Z

    move-result p0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const v1, 0x1e

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v6, Ltii;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v0, 0x1c

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

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_c
    const/4 v4, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v0, v6

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct/range {v0 .. v5}, Ltii;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/Long;Ltib;Ljava/lang/Integer;)V

    goto/32 :goto_0

    nop

    nop

    :goto_12
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public requestLensActivityPendingIntentWithBitmap(Landroid/graphics/Bitmap;Lcom/google/lens/sdk/PendingIntentConsumer;)Z
    .locals 7

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-direct/range {v0 .. v5}, Ltii;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/Long;Ltib;Ljava/lang/Integer;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v6, p2}, Lcom/google/lens/sdk/LensApi;->e(Ltii;Lcom/google/lens/sdk/PendingIntentConsumer;)Z

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    new-instance v6, Ltii;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    move-object v0, v6

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

    :goto_12
    const v0, 0x5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public requestLensActivityPendingIntentWithBitmapUri(Landroid/content/Context;Landroid/net/Uri;Lcom/google/lens/sdk/PendingIntentConsumer;)Z
    .locals 8

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    const-string v0, "com.google.android.googlequicksearchbox"

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    const/4 v4, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-direct/range {v2 .. v7}, Ltii;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/Long;Ltib;Ljava/lang/Integer;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, p3}, Lcom/google/lens/sdk/LensApi;->e(Ltii;Lcom/google/lens/sdk/PendingIntentConsumer;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_a
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    move-object v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    new-instance p1, Ltii;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x14

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    :goto_12
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x1

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

    :goto_14
    move-object v2, p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v7, 0x0

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

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method
