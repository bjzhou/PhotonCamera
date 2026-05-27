.class final Louz;
.super Lovf;


# instance fields
.field public final a:Loop;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lovf;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lolp;->k(Ljava/lang/Object;)Loop;

    move-result-object v0

    iput-object v0, p0, Louz;->a:Loop;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Loux;

    iget-object p1, p0, Louz;->a:Loop;

    iget-object p1, p1, Loop;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Louz;->a:Loop;

    sget-object v0, Louy;->a:Loxb;

    invoke-virtual {p1, v0}, Loop;->c(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)[Loku;
    .locals 1

    check-cast p1, Loux;

    iget-object p1, p0, Louz;->a:Loop;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loop;->c(Ljava/lang/Object;)V

    sget-object p1, Love;->a:[Loku;

    return-object p1
.end method
