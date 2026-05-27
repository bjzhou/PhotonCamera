.class public final Lfna;
.super Ljava/lang/Object;

# interfaces
.implements Ljzs;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lexl;

.field final synthetic c:Lfxf;


# direct methods
.method public constructor <init>(Lfxf;Ljava/lang/String;Lexl;[B)V
    .locals 0

    iput-object p1, p0, Lfna;->c:Lfxf;

    iput-object p2, p0, Lfna;->a:Ljava/lang/String;

    iput-object p3, p0, Lfna;->b:Lexl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lgpx;

    iget-object p1, p0, Lfna;->c:Lfxf;

    iget-object p1, p1, Lfxf;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p1, p1, Lfng;->E:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lfna;->c:Lfxf;

    iget-object v0, v0, Lfxf;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v0, v0, Lfng;->E:Ljava/util/Set;

    iget-object v1, p0, Lfna;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lfna;->b:Lexl;

    invoke-virtual {p1, p0}, Lexl;->e(Ljzs;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
