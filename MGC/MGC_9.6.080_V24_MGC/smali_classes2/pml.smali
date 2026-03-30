.class public final Lpml;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lprz;

.field public final b:Lpra;

.field public final c:Lpcu;

.field public final d:Lpnv;

.field public final e:Lpgn;

.field public final f:Z

.field public final g:Lows;

.field public final h:Lrbh;

.field public final i:Lnar;


# direct methods
.method public constructor <init>(Lprz;Lrbh;Lows;Lpra;Lpcu;Lpnv;Lpgn;Lnar;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const-string p1, "OutputDistributorFac"

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-interface {p5, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lpml;->c:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    iput-object p8, p0, Lpml;->i:Lnar;

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

    :goto_9
    iput-object p1, p0, Lpml;->a:Lprz;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p6, p0, Lpml;->d:Lpnv;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_6

    nop

    nop

    nop

    nop

    :catchall_0
    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p7, p0, Lpml;->e:Lpgn;

    nop

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

    :goto_f
    iget-boolean p1, p4, Lpra;->d:Z

    nop

    nop

    :try_start_0
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_MULTI_RESOLUTION_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_10
    iput-object p3, p0, Lpml;->g:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    iput-object p2, p0, Lpml;->h:Lrbh;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    iput-boolean p1, p0, Lpml;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    iput-object p4, p0, Lpml;->b:Lpra;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
