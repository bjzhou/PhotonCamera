.class public final synthetic Lj$/nio/file/attribute/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/attribute/FileStoreAttributeView;


# instance fields
.field public final synthetic a:Lj$/nio/file/attribute/C;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/file/attribute/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/B;->a:Lj$/nio/file/attribute/C;

    return-void
.end method

.method public static synthetic a(Lj$/nio/file/attribute/C;)Ljava/nio/file/attribute/FileStoreAttributeView;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/attribute/A;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/attribute/A;

    iget-object p0, p0, Lj$/nio/file/attribute/A;->a:Ljava/nio/file/attribute/FileStoreAttributeView;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/attribute/B;

    invoke-direct {v0, p0}, Lj$/nio/file/attribute/B;-><init>(Lj$/nio/file/attribute/C;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/attribute/B;->a:Lj$/nio/file/attribute/C;

    instance-of v1, p1, Lj$/nio/file/attribute/B;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/attribute/B;

    iget-object p1, p1, Lj$/nio/file/attribute/B;->a:Lj$/nio/file/attribute/C;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/B;->a:Lj$/nio/file/attribute/C;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/B;->a:Lj$/nio/file/attribute/C;

    check-cast v0, Lj$/nio/file/attribute/A;

    invoke-virtual {v0}, Lj$/nio/file/attribute/A;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
