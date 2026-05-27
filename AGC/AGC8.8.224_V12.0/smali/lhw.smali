.class final Llhw;
.super Llhv;


# static fields
.field public static final a:Llhw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llhw;

    invoke-direct {v0}, Llhw;-><init>()V

    sput-object v0, Llhw;->a:Llhw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llhv;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lnxy;
    .locals 4

    check-cast p2, Landroid/os/health/HealthStats;

    sget-object v0, Loyj;->e:Loyj;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    const v1, 0xc351

    invoke-static {p2, v1}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    long-to-int v2, v1

    if-eqz v2, :cond_1

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyj;

    iget v3, v1, Loyj;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Loyj;->a:I

    iput v2, v1, Loyj;->b:I

    :cond_1
    const v1, 0xc352

    invoke-static {p2, v1}, Lljr;->c(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    long-to-int p2, v1

    if-eqz p2, :cond_3

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loyj;

    iget v2, v1, Loyj;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Loyj;->a:I

    iput p2, v1, Loyj;->c:I

    :cond_3
    if-eqz p1, :cond_5

    invoke-static {p1}, Lljr;->f(Ljava/lang/String;)Loyf;

    move-result-object p1

    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Loyj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Loyj;->d:Loyf;

    iget p1, p2, Loyj;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p2, Loyj;->a:I

    :cond_5
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Loyj;

    invoke-static {p1}, Lljr;->m(Loyj;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p1, 0x0

    :cond_6
    return-object p1
.end method

.method public final synthetic b(Lnxy;Lnxy;)Lnxy;
    .locals 4

    check-cast p1, Loyj;

    check-cast p2, Loyj;

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    sget-object v0, Loyj;->e:Loyj;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget v1, p1, Loyj;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget v1, p1, Loyj;->b:I

    iget v2, p2, Loyj;->b:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v2, v0, Lnwn;->b:Lnws;

    check-cast v2, Loyj;

    iget v3, v2, Loyj;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Loyj;->a:I

    iput v1, v2, Loyj;->b:I

    :cond_1
    iget v1, p1, Loyj;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    iget v1, p1, Loyj;->c:I

    iget p2, p2, Loyj;->c:I

    sub-int/2addr v1, p2

    if-eqz v1, :cond_3

    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Loyj;

    iget v2, p2, Loyj;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p2, Loyj;->a:I

    iput v1, p2, Loyj;->c:I

    :cond_3
    iget-object p1, p1, Loyj;->d:Loyf;

    if-nez p1, :cond_4

    sget-object p1, Loyf;->d:Loyf;

    :cond_4
    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Loyj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Loyj;->d:Loyf;

    iget p1, p2, Loyj;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p2, Loyj;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Loyj;

    invoke-static {p1}, Lljr;->m(Loyj;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p1, 0x0

    :cond_6
    return-object p1
.end method

.method public final bridge synthetic c(Lnxy;)Ljava/lang/String;
    .locals 0

    check-cast p1, Loyj;

    iget-object p1, p1, Loyj;->d:Loyf;

    if-nez p1, :cond_0

    sget-object p1, Loyf;->d:Loyf;

    :cond_0
    iget-object p1, p1, Loyf;->c:Ljava/lang/String;

    return-object p1
.end method
