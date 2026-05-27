.class public final Llhr;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lmrd;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field final a:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    invoke-static {v0}, Lmrd;->b(C)Lmrd;

    move-result-object v0

    sput-object v0, Llhr;->b:Lmrd;

    const-string v0, "^(\\*[a-z]+\\*).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llhr;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Llhr;->a:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Llhr;->b:Lmrd;

    invoke-virtual {v0, p0}, Lmrd;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "MALFORMED"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method final b(Loyk;)Loyk;
    .locals 5

    iget-object v0, p1, Loyk;->d:Loyf;

    if-nez v0, :cond_0

    sget-object v0, Loyf;->d:Loyf;

    :cond_0
    iget v0, v0, Loyf;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p1, Loyk;->d:Loyf;

    if-nez v0, :cond_1

    sget-object v0, Loyf;->d:Loyf;

    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnwn;

    invoke-virtual {v2, v0}, Lnwn;->s(Lnws;)V

    iget-object v0, p0, Llhr;->a:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Loyf;

    iget-wide v3, v3, Loyf;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnwn;

    invoke-virtual {v1, p1}, Lnwn;->s(Lnws;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, v2, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_2
    iget-object p1, v2, Lnwn;->b:Lnws;

    check-cast p1, Loyf;

    iget v0, p1, Loyf;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Loyf;->a:I

    iput-wide v3, p1, Loyf;->b:J

    iget-object p1, v1, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_3
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Loyk;

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Loyf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Loyk;->d:Loyf;

    iget v0, p1, Loyk;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Loyk;->a:I

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Loyk;

    :cond_4
    return-object p1
.end method

.method final c(ILoyk;)Loyk;
    .locals 8

    iget-object v0, p2, Loyk;->d:Loyf;

    if-nez v0, :cond_0

    sget-object v0, Loyf;->d:Loyf;

    :cond_0
    iget v0, v0, Loyf;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    iget-object v0, p2, Loyk;->d:Loyf;

    if-nez v0, :cond_1

    sget-object v0, Loyf;->d:Loyf;

    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnwn;

    invoke-virtual {v2, v0}, Lnwn;->s(Lnws;)V

    invoke-virtual {p2, v1}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnwn;

    invoke-virtual {v0, p2}, Lnwn;->s(Lnws;)V

    iget-object p2, v2, Lnwn;->b:Lnws;

    check-cast p2, Loyf;

    iget-object p2, p2, Loyf;->c:Ljava/lang/String;

    invoke-static {p2}, Lnpr;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Llhr;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x1

    if-nez v1, :cond_4

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p2, "--"

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Llhr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :pswitch_2
    sget-object p1, Llhr;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "*sync*/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 p1, 0x7

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Llhr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    :goto_0
    invoke-static {p2}, Lnpr;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Llhr;->a:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v5, p1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, v2, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5
    iget-object p1, v2, Lnwn;->b:Lnws;

    move-object p2, p1

    check-cast p2, Loyf;

    iget v1, p2, Loyf;->a:I

    or-int/2addr v1, v6

    iput v1, p2, Loyf;->a:I

    iput-wide v3, p2, Loyf;->b:J

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6
    iget-object p1, v2, Lnwn;->b:Lnws;

    check-cast p1, Loyf;

    iget p2, p1, Loyf;->a:I

    and-int/lit8 p2, p2, -0x3

    iput p2, p1, Loyf;->a:I

    sget-object p2, Loyf;->d:Loyf;

    iget-object p2, p2, Loyf;->c:Ljava/lang/String;

    iput-object p2, p1, Loyf;->c:Ljava/lang/String;

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_7
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Loyk;

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Loyf;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Loyk;->d:Loyf;

    iget p2, p1, Loyk;->a:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Loyk;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Loyk;

    return-object p1

    :cond_8
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
