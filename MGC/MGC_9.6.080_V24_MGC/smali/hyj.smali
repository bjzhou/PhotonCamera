.class public final Lhyj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhxt;
.implements Lhxr;
.implements Lhxq;
.implements Lhxy;


# instance fields
.field public final a:Lhze;

.field private final b:Lhxt;

.field private final c:Lhxq;

.field private final d:Lhxr;

.field private final e:Lhxy;


# direct methods
.method public constructor <init>(Lhze;Lhxt;Lhxq;Lhxr;Lhxy;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lhyj;->e:Lhxy;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhyj;->a:Lhze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object p4, p0, Lhyj;->d:Lhxr;

    nop

    goto/32 :goto_0

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
    iput-object p2, p0, Lhyj;->b:Lhxt;

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

    :goto_5
    iput-object p3, p0, Lhyj;->c:Lhxq;

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

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpge;Lphh;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1, p2}, Lhxq;->a(Lpge;Lphh;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhyj;->c:Lhxq;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
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
    iget-object p0, p0, Lhyj;->d:Lhxr;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lhxr;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic c(Lpnu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final d(Lpnu;Lfxj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhyj;->d:Lhxr;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1, p2}, Lhxr;->d(Lpnu;Lfxj;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhyj;->b:Lhxt;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lhxt;->e()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()Ljava/util/Set;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhyj;->e:Lhxy;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lhxy;->f()Ljava/util/Set;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method

.method public final g(Landroid/hardware/Sensor;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhyj;->e:Lhxy;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Lhxy;->g(Landroid/hardware/Sensor;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final h(Landroid/hardware/Sensor;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lhxy;->h(Landroid/hardware/Sensor;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhyj;->e:Lhxy;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-interface {p0, p1, p2}, Lhxy;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhyj;->e:Lhxy;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhyj;->e:Lhxy;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lhxy;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method
