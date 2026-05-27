.class final Ljeo;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljdz;

.field public final b:Ljca;


# direct methods
.method public constructor <init>(Ljdz;Ljca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljeo;->a:Ljdz;

    iput-object p2, p0, Ljeo;->b:Ljca;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Ljeo;

    if-eqz v1, :cond_0

    check-cast p1, Ljeo;

    iget-object v1, p0, Ljeo;->a:Ljdz;

    iget-object v2, p1, Ljeo;->a:Ljdz;

    invoke-static {v1, v2}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljeo;->b:Ljca;

    iget-object p1, p1, Ljeo;->b:Ljca;

    invoke-static {v1, p1}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ljeo;->a:Ljdz;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ljeo;->b:Ljca;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ljeo;->a:Ljdz;

    const-string v2, "key"

    invoke-static {v2, v1, v0}, Ljhp;->ah(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    const-string v1, "feature"

    iget-object v2, p0, Ljeo;->b:Ljca;

    invoke-static {v1, v2, v0}, Ljhp;->ah(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    invoke-static {v0, p0}, Ljhp;->ag(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
