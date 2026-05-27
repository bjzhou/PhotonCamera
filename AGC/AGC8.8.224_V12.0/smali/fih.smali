.class final Lfih;
.super Ljava/lang/Object;

# interfaces
.implements Lfgh;


# instance fields
.field final synthetic a:Ldhi;


# direct methods
.method public constructor <init>(Ldhi;)V
    .locals 0

    iput-object p1, p0, Lfih;->a:Ldhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/FileOutputStream;ILnou;Ljava/util/concurrent/Executor;)Lkxv;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lfih;->a:Ldhi;

    sget-object v1, Ldhv;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    const/4 v0, 0x1

    invoke-static {v0}, Lacx;->d(I)Loxq;

    move-result-object v0

    invoke-static {p1, v0}, Lacw;->c(Ljava/io/FileOutputStream;Loxq;)Lamv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lamv;->e(I)V

    new-instance p2, Lkxh;

    invoke-direct {p2, p1, v0, p4}, Lkxh;-><init>(Ljava/io/FileOutputStream;Lamv;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lkcw;

    const/16 p4, 0xf

    invoke-direct {p1, p2, p3, p4}, Lkcw;-><init>(Lkxh;Lnou;I)V

    iget-object p4, p2, Lkxh;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p3, p1, p4}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lkxj;

    invoke-direct {p2, p1}, Lkxj;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
