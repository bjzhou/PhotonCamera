.class final Lj$/nio/file/attribute/r;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/attribute/FileAttribute;


# instance fields
.field final synthetic a:Ljava/nio/file/attribute/FileAttribute;


# direct methods
.method constructor <init>(Ljava/nio/file/attribute/FileAttribute;)V
    .locals 0

    iput-object p1, p0, Lj$/nio/file/attribute/r;->a:Ljava/nio/file/attribute/FileAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final name()Ljava/lang/String;
    .locals 1

    const-string v0, "posix:permissions"

    return-object v0
.end method

.method public final value()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/attribute/r;->a:Ljava/nio/file/attribute/FileAttribute;

    invoke-interface {v0}, Ljava/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Lj$/nio/file/a;->n(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
