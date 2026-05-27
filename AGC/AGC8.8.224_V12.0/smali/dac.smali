.class public final Ldac;
.super Ljwi;


# direct methods
.method public constructor <init>(Ljwb;)V
    .locals 0

    invoke-direct {p0, p1}, Ljwi;-><init>(Ljwb;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string v0, "torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lgej;->p:Lgej;

    goto :goto_0

    :cond_0
    sget-object p1, Lgej;->q:Lgej;

    :goto_0
    return-object p1
.end method

.method protected final bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lgej;

    sget-object v0, Lgej;->p:Lgej;

    invoke-virtual {v0, p1}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const-string p1, "off"

    return-object p1

    :cond_0
    const-string p1, "torch"

    return-object p1
.end method
