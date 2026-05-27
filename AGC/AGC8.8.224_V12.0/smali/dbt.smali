.class public final Ldbt;
.super Ljava/lang/Object;

# interfaces
.implements Lfaz;
.implements Lfaq;


# instance fields
.field private a:Leg;

.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljuh;Lezx;Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcue;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p2, v1}, Lcue;-><init>(Ldbt;Lezx;I)V

    invoke-virtual {p1, v0}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iput-object p3, p0, Ldbt;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final declared-synchronized b(Leg;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Ldbt;->a:Leg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lff;->dismiss()V

    :cond_0
    iput-object p1, p0, Ldbt;->a:Leg;

    iget-object v0, p0, Ldbt;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Leg;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bK()V
    .locals 1

    iget-object v0, p0, Ldbt;->a:Leg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lff;->dismiss()V

    :cond_0
    return-void
.end method
