.class public final Lfyv;
.super Ljava/lang/Object;

# interfaces
.implements Lfyz;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final synthetic b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfyz;Ljava/util/Set;I)V
    .locals 0

    iput p3, p0, Lfyv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfyv;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfyv;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfyz;Lva;I[B[B[B)V
    .locals 0

    iput p3, p0, Lfyv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfyv;->c:Ljava/lang/Object;

    iput-object p1, p0, Lfyv;->a:Ljava/lang/Object;

    return-void
.end method

.method private final c(Lfyy;Lgkr;)Lfyy;
    .locals 11

    iget-object p2, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p2}, Lgxl;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfyv;->c:Ljava/lang/Object;

    check-cast v1, Lva;

    invoke-virtual {v1, v0}, Lva;->s(Ljava/lang/String;)Leid;

    move-result-object v5

    new-instance v0, Lfyu;

    invoke-interface {p2}, Lgxl;->p()Lnou;

    move-result-object v4

    iget-object p2, p0, Lfyv;->c:Ljava/lang/Object;

    move-object v6, p2

    check-cast v6, Lva;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lfyu;-><init>(Lfyy;Lnou;Leid;Lva;[B[B[B[B)V

    return-object v0
.end method


# virtual methods
.method public final a(Lgkr;)Lfyy;
    .locals 2

    iget v0, p0, Lfyv;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lfxb;

    iget-object v1, p0, Lfyv;->c:Ljava/lang/Object;

    invoke-interface {v1, p1}, Lfyz;->a(Lgkr;)Lfyy;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfxb;-><init>(Lfyv;Lfyy;[B)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lfyv;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lfyz;->a(Lgkr;)Lfyy;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lfyv;->c(Lfyy;Lgkr;)Lfyy;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lgkr;)Lfyy;
    .locals 2

    iget v0, p0, Lfyv;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfyv;->c:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lfyz;->b(Lgkr;)Lfyy;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lfyv;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lfyz;->b(Lgkr;)Lfyy;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lfyv;->c(Lfyy;Lgkr;)Lfyy;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lfxb;

    invoke-direct {v0, p0, p1, v1}, Lfxb;-><init>(Lfyv;Lfyy;[B)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
