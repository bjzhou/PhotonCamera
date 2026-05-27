.class public final Lio;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/graphics/PorterDuff$Mode;

.field private static b:Lio;


# instance fields
.field private c:Lms;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lio;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    const-class v0, Lio;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lms;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d()Lio;
    .locals 2

    const-class v0, Lio;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio;->b:Lio;

    if-nez v1, :cond_0

    invoke-static {}, Lio;->f()V

    :cond_0
    sget-object v1, Lio;->b:Lio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized f()V
    .locals 3

    const-class v0, Lio;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio;->b:Lio;

    if-nez v1, :cond_0

    new-instance v1, Lio;

    invoke-direct {v1}, Lio;-><init>()V

    sput-object v1, Lio;->b:Lio;

    invoke-static {}, Lms;->e()Lms;

    move-result-object v2

    iput-object v2, v1, Lio;->c:Lms;

    sget-object v1, Lio;->b:Lio;

    iget-object v1, v1, Lio;->c:Lms;

    new-instance v2, Lin;

    invoke-direct {v2}, Lin;-><init>()V

    invoke-virtual {v1, v2}, Lms;->g(Lmr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method final declared-synchronized a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio;->c:Lms;

    invoke-virtual {v0, p1, p2}, Lms;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio;->c:Lms;

    invoke-virtual {v0, p1, p2}, Lms;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio;->c:Lms;

    invoke-virtual {v0, p1}, Lms;->f(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio;->c:Lms;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lms;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
