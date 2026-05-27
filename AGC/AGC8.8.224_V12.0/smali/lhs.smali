.class final Llhs;
.super Llhv;


# static fields
.field public static final a:Llhs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llhs;

    invoke-direct {v0}, Llhs;-><init>()V

    sput-object v0, Llhs;->a:Llhs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llhv;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lnxy;
    .locals 3

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Loye;->d:Loye;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Loye;

    iget v2, v1, Loye;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Loye;->a:I

    iput p2, v1, Loye;->b:I

    if-eqz p1, :cond_3

    invoke-static {p1}, Lljr;->f(Ljava/lang/String;)Loyf;

    move-result-object p1

    iget-object p2, v0, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object p2, v0, Lnwn;->b:Lnws;

    check-cast p2, Loye;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Loye;->c:Loyf;

    iget p1, p2, Loye;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p2, Loye;->a:I

    :cond_3
    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Loye;

    :goto_0
    return-object p1
.end method

.method public final synthetic b(Lnxy;Lnxy;)Lnxy;
    .locals 2

    check-cast p1, Loye;

    check-cast p2, Loye;

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    iget v0, p1, Loye;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, p1, Loye;->b:I

    iget p2, p2, Loye;->b:I

    sub-int/2addr v0, p2

    if-nez v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    sget-object p2, Loye;->d:Loye;

    invoke-virtual {p2}, Lnws;->O()Lnwn;

    move-result-object p2

    iget v1, p1, Loye;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    iget-object p1, p1, Loye;->c:Loyf;

    if-nez p1, :cond_1

    sget-object p1, Loyf;->d:Loyf;

    :cond_1
    iget-object v1, p2, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_2
    iget-object v1, p2, Lnwn;->b:Lnws;

    check-cast v1, Loye;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v1, Loye;->c:Loyf;

    iget p1, v1, Loye;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v1, Loye;->a:I

    :cond_3
    iget-object p1, p2, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_4
    iget-object p1, p2, Lnwn;->b:Lnws;

    check-cast p1, Loye;

    iget v1, p1, Loye;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Loye;->a:I

    iput v0, p1, Loye;->b:I

    invoke-virtual {p2}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Loye;

    goto :goto_0

    :cond_5
    move-object p1, v1

    :cond_6
    :goto_0
    return-object p1
.end method

.method public final bridge synthetic c(Lnxy;)Ljava/lang/String;
    .locals 0

    check-cast p1, Loye;

    iget-object p1, p1, Loye;->c:Loyf;

    if-nez p1, :cond_0

    sget-object p1, Loyf;->d:Loyf;

    :cond_0
    iget-object p1, p1, Loyf;->c:Ljava/lang/String;

    return-object p1
.end method
