.class public final Ldtu;
.super Ljava/lang/Object;

# interfaces
.implements Ldsw;
.implements Ldsu;
.implements Ldss;
.implements Ldtc;


# instance fields
.field public final a:Lduv;

.field private final b:Ldsw;

.field private final c:Ldss;

.field private final d:Ldsu;

.field private final e:Ldtc;


# direct methods
.method public constructor <init>(Lduv;Ldsw;Ldss;Ldsu;Ldtc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldtu;->a:Lduv;

    iput-object p2, p0, Ldtu;->b:Ldsw;

    iput-object p3, p0, Ldtu;->c:Ldss;

    iput-object p4, p0, Ldtu;->d:Ldsu;

    iput-object p5, p0, Ldtu;->e:Ldtc;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ldtu;->d:Ldsu;

    invoke-interface {v0}, Ldsu;->a()V

    return-void
.end method

.method public final b(Lkeb;Lkfj;)V
    .locals 1

    iget-object v0, p0, Ldtu;->c:Ldss;

    invoke-interface {v0, p1, p2}, Ldss;->b(Lkeb;Lkfj;)V

    return-void
.end method

.method public final synthetic c(Lkli;)V
    .locals 0

    return-void
.end method

.method public final d(Lkli;Lcea;)V
    .locals 1

    iget-object v0, p0, Ldtu;->d:Ldsu;

    invoke-interface {v0, p1, p2}, Ldsu;->d(Lkli;Lcea;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Ldtu;->b:Ldsw;

    invoke-interface {v0}, Ldsw;->e()Z

    move-result v0

    return v0
.end method

.method public final f()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Ldtu;->e:Ldtc;

    invoke-interface {v0}, Ldtc;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final g(Landroid/hardware/Sensor;)V
    .locals 1

    iget-object v0, p0, Ldtu;->e:Ldtc;

    invoke-interface {v0, p1}, Ldtc;->g(Landroid/hardware/Sensor;)V

    return-void
.end method

.method public final h(Landroid/hardware/Sensor;)V
    .locals 1

    iget-object v0, p0, Ldtu;->e:Ldtc;

    invoke-interface {v0, p1}, Ldtc;->h(Landroid/hardware/Sensor;)V

    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1

    iget-object v0, p0, Ldtu;->e:Ldtc;

    invoke-interface {v0, p1, p2}, Ldtc;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p0, Ldtu;->e:Ldtc;

    invoke-interface {v0, p1}, Ldtc;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method
