.class public final synthetic Lj$/nio/file/I;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/K;


# instance fields
.field public final synthetic a:Ljava/nio/file/WatchEvent$Modifier;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/WatchEvent$Modifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/I;->a:Ljava/nio/file/WatchEvent$Modifier;

    return-void
.end method

.method public static synthetic a(Ljava/nio/file/WatchEvent$Modifier;)Lj$/nio/file/K;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/J;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/J;

    iget-object p0, p0, Lj$/nio/file/J;->a:Lj$/nio/file/K;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/I;

    invoke-direct {v0, p0}, Lj$/nio/file/I;-><init>(Ljava/nio/file/WatchEvent$Modifier;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/I;->a:Ljava/nio/file/WatchEvent$Modifier;

    invoke-interface {v0}, Ljava/nio/file/WatchEvent$Modifier;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/I;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/I;

    iget-object p1, p1, Lj$/nio/file/I;->a:Ljava/nio/file/WatchEvent$Modifier;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/I;->a:Ljava/nio/file/WatchEvent$Modifier;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/I;->a:Ljava/nio/file/WatchEvent$Modifier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
