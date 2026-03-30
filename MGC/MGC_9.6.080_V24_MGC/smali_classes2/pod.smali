.class public final Lpod;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpoa;


# instance fields
.field private final a:Landroid/hardware/camera2/CameraManager;

.field private final b:Lpcu;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Lpcu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpod;->a:Landroid/hardware/camera2/CameraManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const-string p1, "DefaultCamIdsPrdr"

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
    iput-object p1, p0, Lpod;->b:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

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

    :goto_5
    invoke-interface {p2, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v1}, Lpcu;->d(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    :goto_2
    :try_start_0
    invoke-static {}, Lcom/a;->ac()[Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_3
    if-ge v3, v1, :cond_0

    nop

    nop

    aget-object v4, v0, v3

    nop

    nop

    nop

    invoke-static {v4}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v4

    nop

    nop

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    :cond_0
    invoke-static {v2}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object p0

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lpod;->b:Lpcu;

    nop

    nop

    nop

    const-string v1, "No cameras available"

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->d(Ljava/lang/String;)V

    new-instance v0, Lpoc;

    nop

    nop

    nop

    invoke-direct {v0}, Lpoc;-><init>()V

    throw v0

    nop
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v1, v2, v0}, Lpob;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    const-string v1, "Unable to read camera list."

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x17

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

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    iget-object p0, p0, Lpod;->b:Lpcu;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v2

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

    :goto_e
    const v1, 0x1c

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_10
    new-instance p0, Lpob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final b()Ljava/util/List;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget p0, Lryb;->d:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lsbh;->a:Lryb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method
