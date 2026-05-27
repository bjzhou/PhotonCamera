.class public final Llhx;
.super Llhv;


# static fields
.field public static final a:Llhx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llhx;

    invoke-direct {v0}, Llhx;-><init>()V

    sput-object v0, Llhx;->a:Llhx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llhv;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lnxy;
    .locals 0

    check-cast p2, Landroid/os/health/TimerStat;

    invoke-static {p1, p2}, Lljr;->i(Ljava/lang/String;Landroid/os/health/TimerStat;)Loyk;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lnxy;Lnxy;)Lnxy;
    .locals 0

    check-cast p1, Loyk;

    check-cast p2, Loyk;

    invoke-static {p1, p2}, Lljr;->h(Loyk;Loyk;)Loyk;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(Lnxy;)Ljava/lang/String;
    .locals 2

    check-cast p1, Loyk;

    iget-object v0, p1, Loyk;->d:Loyf;

    if-nez v0, :cond_0

    sget-object v0, Loyf;->d:Loyf;

    :cond_0
    iget v0, v0, Loyf;->a:I

    and-int/lit8 v0, v0, 0x2

    iget-object p1, p1, Loyk;->d:Loyf;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    sget-object p1, Loyf;->d:Loyf;

    :cond_1
    iget-object p1, p1, Loyf;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    sget-object p1, Loyf;->d:Loyf;

    :cond_3
    iget-wide v0, p1, Loyf;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
