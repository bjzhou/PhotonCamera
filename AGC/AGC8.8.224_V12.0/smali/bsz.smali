.class final Lbsz;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lbsy;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsy;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbsz;->a:Lbsy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbsz;->b:Ljava/util/Map;

    return-void
.end method

.method private static d(Lbsy;)V
    .locals 2

    iget-object v0, p0, Lbsy;->d:Lbsy;

    iget-object v1, p0, Lbsy;->c:Lbsy;

    iput-object v1, v0, Lbsy;->c:Lbsy;

    iget-object p0, p0, Lbsy;->c:Lbsy;

    iput-object v0, p0, Lbsy;->d:Lbsy;

    return-void
.end method

.method private static e(Lbsy;)V
    .locals 1

    iget-object v0, p0, Lbsy;->c:Lbsy;

    iput-object p0, v0, Lbsy;->d:Lbsy;

    iget-object v0, p0, Lbsy;->d:Lbsy;

    iput-object p0, v0, Lbsy;->c:Lbsy;

    return-void
.end method


# virtual methods
.method public final a(Lbtg;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbsz;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy;

    if-nez v0, :cond_0

    new-instance v0, Lbsy;

    invoke-direct {v0, p1}, Lbsy;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lbsz;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lbtg;->a()V

    :goto_0
    invoke-static {v0}, Lbsz;->d(Lbsy;)V

    iget-object p1, p0, Lbsz;->a:Lbsy;

    iput-object p1, v0, Lbsy;->d:Lbsy;

    iget-object p1, p1, Lbsy;->c:Lbsy;

    iput-object p1, v0, Lbsy;->c:Lbsy;

    invoke-static {v0}, Lbsz;->e(Lbsy;)V

    invoke-virtual {v0}, Lbsy;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbsz;->a:Lbsy;

    iget-object v0, v0, Lbsy;->d:Lbsy;

    :goto_0
    iget-object v1, p0, Lbsz;->a:Lbsy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lbsy;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lbsz;->d(Lbsy;)V

    iget-object v1, p0, Lbsz;->b:Ljava/util/Map;

    iget-object v2, v0, Lbsy;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lbsy;->a:Ljava/lang/Object;

    invoke-interface {v1}, Lbtg;->a()V

    iget-object v0, v0, Lbsy;->d:Lbsy;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Lbtg;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lbsz;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy;

    if-nez v0, :cond_0

    new-instance v0, Lbsy;

    invoke-direct {v0, p1}, Lbsy;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lbsz;->d(Lbsy;)V

    iget-object v1, p0, Lbsz;->a:Lbsy;

    iget-object v2, v1, Lbsy;->d:Lbsy;

    iput-object v2, v0, Lbsy;->d:Lbsy;

    iput-object v1, v0, Lbsy;->c:Lbsy;

    invoke-static {v0}, Lbsz;->e(Lbsy;)V

    iget-object v1, p0, Lbsz;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lbtg;->a()V

    :goto_0
    iget-object p1, v0, Lbsy;->b:Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lbsy;->b:Ljava/util/List;

    :cond_1
    iget-object p1, v0, Lbsy;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbsz;->a:Lbsy;

    iget-object v1, v1, Lbsy;->c:Lbsy;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lbsz;->a:Lbsy;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lbsy;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lbsy;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lbsy;->c:Lbsy;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
