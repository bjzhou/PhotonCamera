.class public final Lncp;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lndu;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lndu;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "parser"

    invoke-static {p1, v0}, Lndd;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lncp;->a:Lndu;

    const-string p1, "message"

    invoke-static {p2, p1}, Lndd;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lncp;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lncp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lncp;

    iget-object v0, p0, Lncp;->a:Lndu;

    iget-object v2, p1, Lncp;->a:Lndu;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lncp;->b:Ljava/lang/String;

    iget-object p1, p1, Lncp;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lncp;->a:Lndu;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lncp;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
