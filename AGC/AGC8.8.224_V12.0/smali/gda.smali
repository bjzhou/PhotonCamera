.class public final Lgda;
.super Ljvk;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgda;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldqx;[B[B[B)V
    .locals 8

    new-instance p2, Lfws;

    new-instance p3, Lklz;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1}, Lklz;-><init>(J)V

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lfws;-><init>(Lkpb;Lnou;)V

    invoke-direct {p0, p2}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance p2, Ljvk;

    sget-object p3, Leeg;->c:Leeg;

    invoke-direct {p2, p3}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lgda;->a:Ljava/lang/Object;

    new-instance p2, Lecf;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lecf;-><init>(Lgda;Ldqx;I[B[B[B[B)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-virtual {p0, p2, p1}, Ljvk;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    return-void
.end method
