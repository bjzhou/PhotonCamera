.class public final Lcsk;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lnak;

.field private static final c:Lj$/time/Duration;


# instance fields
.field public final a:Lcsh;

.field private final d:Landroid/content/ContentResolver;

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/util/concurrent/ScheduledExecutorService;

.field private final g:Landroid/view/Window;

.field private h:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/apps/camera/camcorder/display/DisplayBrightnessAdjuster"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcsk;->b:Lnak;

    const-wide/16 v0, 0xfa

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lcsk;->c:Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcsh;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcsk;->d:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcsk;->a:Lcsh;

    iput-object p4, p0, Lcsk;->e:Landroid/os/Handler;

    iput-object p3, p0, Lcsk;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lcsk;->g:Landroid/view/Window;

    return-void
.end method

.method private final f()V
    .locals 2

    iget-object v0, p0, Lcsk;->h:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcsk;->h:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcsk;->d:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcsk;->b:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Fail to get screen brightness setting."

    const/16 v3, 0x249

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public final b()V
    .locals 3

    invoke-direct {p0}, Lcsk;->f()V

    iget-object v0, p0, Lcsk;->e:Landroid/os/Handler;

    new-instance v1, Lcqf;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lcqf;-><init>(Lcsk;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(F)V
    .locals 1

    iget-object v0, p0, Lcsk;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iget-object p1, p0, Lcsk;->g:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final d(IZ)V
    .locals 2

    invoke-direct {p0}, Lcsk;->f()V

    const/4 v0, -0x1

    add-int/2addr p1, v0

    const v1, 0x3dcccccd    # 0.1f

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcsk;->a()I

    move-result p1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcsk;->a:Lcsh;

    invoke-virtual {v0, p1, v1, p2}, Lcsh;->b(IFZ)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcsk;->e(IIZ)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcsk;->a()I

    move-result p1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcsk;->a:Lcsh;

    invoke-virtual {v0, p1, v1, p2}, Lcsh;->b(IFZ)I

    move-result p1

    iget-object p2, p0, Lcsk;->e:Landroid/os/Handler;

    new-instance v0, Lbbh;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, v1}, Lbbh;-><init>(Lcsk;II)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(IIZ)V
    .locals 3

    iget-object v0, p0, Lcsk;->a:Lcsh;

    const v1, 0x3b23d70a    # 0.0025f

    invoke-virtual {v0, p1, v1, p3}, Lcsh;->b(IFZ)I

    move-result v0

    if-ge v0, p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcsk;->e:Landroid/os/Handler;

    new-instance v1, Lbbh;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v0, v2}, Lbbh;-><init>(Lcsk;II)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-le v0, p2, :cond_2

    iget-object p1, p0, Lcsk;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcsj;

    invoke-direct {v1, p0, v0, p2, p3}, Lcsj;-><init>(Lcsk;IIZ)V

    sget-object p2, Lcsk;->c:Lj$/time/Duration;

    invoke-virtual {p2}, Lj$/time/Duration;->toMillis()J

    move-result-wide p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, p2, p3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcsk;->h:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method
