.class public final synthetic Lclz;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Lcmd;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcmd;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclz;->a:Lcmd;

    iput-wide p2, p0, Lclz;->b:J

    iput p4, p0, Lclz;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 5

    iget-object v0, p0, Lclz;->a:Lcmd;

    iget-wide v1, p0, Lclz;->b:J

    iget v3, p0, Lclz;->c:I

    check-cast p1, Ljava/lang/Void;

    iget-object p1, v0, Lcmd;->g:Lcny;

    new-instance v4, Lcnv;

    invoke-direct {v4, p1, v3}, Lcnv;-><init>(Lcny;I)V

    iget-object p1, p1, Lcny;->i:Ljava/util/concurrent/Executor;

    invoke-static {v4, p1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    invoke-static {p1}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object p1

    new-instance v3, Lcma;

    invoke-direct {v3, v0, v1, v2}, Lcma;-><init>(Lcmd;J)V

    iget-object v0, v0, Lcmd;->h:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1, v3, v0}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method
