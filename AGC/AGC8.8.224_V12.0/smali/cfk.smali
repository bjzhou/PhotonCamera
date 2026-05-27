.class public final Lcfk;
.super Ljwi;


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Ldhi;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljwb;Ldhi;)V
    .locals 0

    invoke-direct {p0, p2}, Ljwi;-><init>(Ljwb;)V

    iput-object p1, p0, Lcfk;->a:Ljava/lang/String;

    iput-object p3, p0, Lcfk;->b:Ldhi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcfk;->b:Ldhi;

    sget-object v1, Ldgs;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    new-instance v0, Lcfo;

    invoke-direct {v0}, Lcfo;-><init>()V

    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcfo;->c(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcfo;

    iget-object v0, p0, Lcfk;->b:Ldhi;

    sget-object v1, Ldgs;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcfo;->b()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    invoke-virtual {p1, v1}, Lcfo;->a(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
