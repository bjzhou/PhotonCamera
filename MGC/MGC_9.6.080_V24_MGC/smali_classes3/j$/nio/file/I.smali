.class public final synthetic Lj$/nio/file/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/file/WatchEvent$Kind;


# instance fields
.field public final synthetic a:Lj$/nio/file/J;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/I;->a:Lj$/nio/file/J;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/J;)Ljava/nio/file/WatchEvent$Kind;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/H;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/H;

    iget-object p0, p0, Lj$/nio/file/H;->a:Ljava/nio/file/WatchEvent$Kind;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/I;

    invoke-direct {v0, p0}, Lj$/nio/file/I;-><init>(Lj$/nio/file/J;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/I;->a:Lj$/nio/file/J;

    instance-of v1, p1, Lj$/nio/file/I;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/I;

    iget-object p1, p1, Lj$/nio/file/I;->a:Lj$/nio/file/J;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/I;->a:Lj$/nio/file/J;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/I;->a:Lj$/nio/file/J;

    invoke-interface {v0}, Lj$/nio/file/J;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic type()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/I;->a:Lj$/nio/file/J;

    invoke-interface {v0}, Lj$/nio/file/J;->type()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
