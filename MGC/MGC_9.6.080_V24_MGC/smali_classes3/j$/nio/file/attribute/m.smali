.class final Lj$/nio/file/attribute/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/file/attribute/FileAttribute;


# instance fields
.field final synthetic a:Lj$/nio/file/attribute/FileAttribute;


# direct methods
.method constructor <init>(Lj$/nio/file/attribute/FileAttribute;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/attribute/m;->a:Lj$/nio/file/attribute/FileAttribute;

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

    iget-object v0, p0, Lj$/nio/file/attribute/m;->a:Lj$/nio/file/attribute/FileAttribute;

    invoke-interface {v0}, Lj$/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Lj$/nio/file/m;->h(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
