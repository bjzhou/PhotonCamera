.class public final synthetic Lj$/nio/file/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/WatchEvent$Modifier;


# instance fields
.field public final synthetic a:Lj$/nio/file/K;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/J;->a:Lj$/nio/file/K;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/K;)Ljava/nio/file/WatchEvent$Modifier;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/I;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/I;

    iget-object p0, p0, Lj$/nio/file/I;->a:Ljava/nio/file/WatchEvent$Modifier;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/J;

    invoke-direct {v0, p0}, Lj$/nio/file/J;-><init>(Lj$/nio/file/K;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/J;->a:Lj$/nio/file/K;

    instance-of v1, p1, Lj$/nio/file/J;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/J;

    iget-object p1, p1, Lj$/nio/file/J;->a:Lj$/nio/file/K;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/J;->a:Lj$/nio/file/K;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/J;->a:Lj$/nio/file/K;

    check-cast v0, Lj$/nio/file/I;

    invoke-virtual {v0}, Lj$/nio/file/I;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
