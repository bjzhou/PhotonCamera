.class public Licd;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field private a:Lell;

.field public final h:Landroid/content/Context;

.field protected i:Licf;

.field protected j:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Licd;->j:Z

    iput-object p1, p0, Licd;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    invoke-virtual {p0}, Licd;->d()V

    return-void
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Licd;->j:Z

    invoke-virtual {p0}, Licd;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Lell;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Licd;->a:Lell;

    const/4 p1, 0x1

    iput-boolean p1, p0, Licd;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Licd;->i:Licf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Licd;->a:Lell;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lell;->g(Lelk;)V

    const/4 v0, 0x0

    iput-object v0, p0, Licd;->i:Licf;

    :cond_0
    return-void
.end method

.method public final g(Licf;)V
    .locals 1

    iget-object v0, p0, Licd;->a:Lell;

    if-eqz v0, :cond_2

    iget-object v0, p0, Licd;->i:Licf;

    iput-object p1, p0, Licd;->i:Licf;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Licd;->a:Lell;

    invoke-interface {p1, v0}, Lell;->g(Lelk;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Licd;->j:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Licd;->i:Licf;

    if-eqz p1, :cond_1

    iget-object v0, p0, Licd;->a:Lell;

    invoke-interface {v0, p1}, Lell;->d(Lelk;)Lkad;

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method public final h(Ljava/lang/String;II)Licf;
    .locals 9

    iget-object v5, p0, Licd;->h:Landroid/content/Context;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    const/16 v0, 0xbb8

    const/4 v0, 0x1

    const/16 v1, 0xbb8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, p2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v4, p1

    move v8, p3

    invoke-static/range {v0 .. v8}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object p1

    return-object p1
.end method
