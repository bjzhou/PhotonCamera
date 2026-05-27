.class final Ldqc;
.super Ljava/lang/Object;

# interfaces
.implements Ldqp;


# instance fields
.field private final a:Lkpb;

.field private final b:[B

.field private final c:Lgyq;


# direct methods
.method public constructor <init>(Lkpb;[BLgyq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqc;->a:Lkpb;

    iput-object p2, p0, Ldqc;->b:[B

    iput-object p3, p0, Ldqc;->c:Lgyq;

    return-void
.end method


# virtual methods
.method public final a()Lkpb;
    .locals 1

    iget-object v0, p0, Ldqc;->a:Lkpb;

    return-object v0
.end method

.method public final b(Lhjc;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Ldqc;->b:[B

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lnhy;->c:Lnhy;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, p0, Ldqc;->b:[B

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v0, v1, v3, v2}, Lnwn;->t([BILnwh;)V

    iget-object v1, p0, Ldqc;->c:Lgyq;

    iget v1, v1, Lgyq;->f:I

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Lnhy;

    iget v3, v2, Lnhy;->a:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lnhy;->a:I

    iput v1, v2, Lnhy;->b:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnhy;

    check-cast p1, Lhjd;

    iput-object v0, p1, Lhjd;->m:Lnhy;
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Ldqe;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Invalid log buffer"

    const/16 v2, 0x43b

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
