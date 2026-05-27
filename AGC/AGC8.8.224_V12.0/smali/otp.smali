.class public Lotp;
.super Lovi;


# instance fields
.field private final c:Lomo;


# direct methods
.method public constructor <init>(Lomo;Lola;)V
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, p2, v0}, Lovi;-><init>(Lola;I)V

    iput-object p1, p0, Lotp;->c:Lomo;

    return-void
.end method

.method static synthetic c(Lotp;Lotd;Loku;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lotp;->c:Lomo;

    invoke-interface {p0, p1, p2}, Lomo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lolc;->a:Lolc;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lojk;->a:Lojk;

    return-object p0
.end method


# virtual methods
.method protected b(Lotd;Loku;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lotp;->c(Lotp;Lotd;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lotp;->c:Lomo;

    invoke-super {p0}, Lovi;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "block["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
