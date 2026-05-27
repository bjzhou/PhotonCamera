.class public final Lfym;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/List;

.field public final c:Lfyk;

.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lfyk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfym;->a:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfym;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfym;->d:Ljava/util/List;

    iput-object p2, p0, Lfym;->c:Lfyk;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Lfym;->b:Ljava/util/List;

    invoke-static {v0}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v0

    iget-object v1, p0, Lfym;->d:Ljava/util/List;

    invoke-static {v1}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v1

    new-instance v2, Lfyl;

    invoke-direct {v2, p0}, Lfyl;-><init>(Lfym;)V

    invoke-static {v0, v1, v2}, Ljvd;->q(Lnou;Lnou;Ljzv;)Lnou;

    move-result-object v0

    new-instance v1, Lcmc;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcmc;-><init>(Lfym;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method
