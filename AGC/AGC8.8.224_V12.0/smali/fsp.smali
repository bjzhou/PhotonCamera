.class public final Lfsp;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfsp;->a:Loiw;

    return-void
.end method

.method public static b(Loiw;)Lfsp;
    .locals 1

    new-instance v0, Lfsp;

    invoke-direct {v0, p0}, Lfsp;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lfsi;
    .locals 9

    iget-object v0, p0, Lfsp;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Lfsh;

    invoke-direct {v1}, Lfsh;-><init>()V

    const/4 v2, 0x5

    iput v2, v1, Lfsh;->a:I

    iget-byte v2, v1, Lfsh;->e:B

    const/4 v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lfsh;->e:B

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lfsh;->b(I)V

    invoke-virtual {v1}, Lfsh;->a()V

    const-wide/16 v4, 0x7d0

    iput-wide v4, v1, Lfsh;->c:J

    iget-byte v4, v1, Lfsh;->e:B

    iput v2, v1, Lfsh;->d:I

    or-int/lit8 v2, v4, 0x18

    int-to-byte v2, v2

    iput-byte v2, v1, Lfsh;->e:B

    sget-object v2, Ldhw;->a:Ldhj;

    invoke-interface {v0}, Ldhi;->c()V

    invoke-virtual {v1}, Lfsh;->a()V

    sget-object v2, Ldhw;->v:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ldhw;->w:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v1, v3}, Lfsh;->b(I)V

    :cond_1
    iget-byte v0, v1, Lfsh;->e:B

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2

    new-instance v0, Lfsi;

    iget v4, v1, Lfsh;->a:I

    iget v5, v1, Lfsh;->b:I

    iget-wide v6, v1, Lfsh;->c:J

    iget v8, v1, Lfsh;->d:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lfsi;-><init>(IIJI)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfsp;->a()Lfsi;

    move-result-object v0

    return-object v0
.end method
