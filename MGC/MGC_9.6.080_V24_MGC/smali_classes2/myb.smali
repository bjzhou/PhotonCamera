.class final Lmyb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Loyd;

.field final synthetic b:Landroid/os/Vibrator;

.field final synthetic c:Lglm;

.field final synthetic d:Lmyc;


# direct methods
.method public constructor <init>(Lmyc;Loyd;Landroid/os/Vibrator;Lglm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lmyb;->a:Loyd;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmyb;->d:Lmyc;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p3, p0, Lmyb;->b:Landroid/os/Vibrator;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lmyb;->c:Lglm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

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

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lmyb;->b:Landroid/os/Vibrator;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lmyc;->a:[J

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    iget-object p1, p0, Lmyb;->b:Landroid/os/Vibrator;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x18

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_b
    iget-object p0, p0, Lmyb;->c:Lglm;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_f
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    sget-object p0, Lmyc;->a:[J

    nop

    nop

    goto/32 :goto_1e

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
    goto/32 :goto_3

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p1, Lmyc;->b:Lmjv;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x19

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_19
    iput v0, p1, Lmjv;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Lmyb;->d:Lmyc;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v4, 0x17f

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lmyb;->a:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    if-nez p1, :cond_2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method
