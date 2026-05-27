.class public final Lbbi;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/app/Service;ILandroid/app/Notification;I)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V
    :try_end_0
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Laxq;->a()Laxq;

    sget-object p1, Landroidx/work/impl/foreground/SystemForegroundService;->a:Ljava/lang/String;

    const-string p2, "Unable to start foreground service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static final b(Lbcj;)Lbbx;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lbbx;

    iget-object v1, p0, Lbcj;->a:Ljava/lang/String;

    iget p0, p0, Lbcj;->q:I

    invoke-direct {v0, v1, p0}, Lbbx;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
