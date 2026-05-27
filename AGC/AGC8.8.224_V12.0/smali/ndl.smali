.class public final Lndl;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Comparator;

.field public static final b:Lndl;


# instance fields
.field public final c:Lndj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lndg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lndg;-><init>(I)V

    sput-object v0, Lndl;->a:Ljava/util/Comparator;

    new-instance v0, Lndl;

    new-instance v1, Lndj;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lndj;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lndl;-><init>(Lndj;)V

    sput-object v0, Lndl;->b:Lndl;

    return-void
.end method

.method public constructor <init>(Lndj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lndl;->c:Lndj;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lndl;->c:Lndj;

    invoke-virtual {v0}, Lndj;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lndl;

    if-eqz v0, :cond_0

    check-cast p1, Lndl;

    iget-object p1, p1, Lndl;->c:Lndj;

    iget-object v0, p0, Lndl;->c:Lndj;

    invoke-virtual {p1, v0}, Lndj;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lndl;->c:Lndj;

    invoke-virtual {v0}, Lndj;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lndl;->c:Lndj;

    invoke-virtual {v0}, Lndj;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
