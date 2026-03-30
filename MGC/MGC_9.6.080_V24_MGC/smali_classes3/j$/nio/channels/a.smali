.class public final synthetic Lj$/nio/channels/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/Channel;


# static fields
.field private static final b:[Lj$/nio/file/attribute/FileAttribute;


# instance fields
.field public final synthetic a:Ljava/nio/channels/AsynchronousFileChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lj$/nio/file/attribute/FileAttribute;

    sput-object v0, Lj$/nio/channels/a;->b:[Lj$/nio/file/attribute/FileAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/AsynchronousFileChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/channels/a;->a:Ljava/nio/channels/AsynchronousFileChannel;

    return-void
.end method

.method public static synthetic c(Ljava/nio/channels/AsynchronousFileChannel;)Lj$/nio/channels/a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/nio/channels/a;

    invoke-direct {v0, p0}, Lj$/nio/channels/a;-><init>(Ljava/nio/channels/AsynchronousFileChannel;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/a;->a:Ljava/nio/channels/AsynchronousFileChannel;

    invoke-static {v0}, Lj$/adapter/b;->n(Ljava/nio/channels/AsynchronousChannel;)V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/channels/a;->a:Ljava/nio/channels/AsynchronousFileChannel;

    instance-of v1, p1, Lj$/nio/channels/a;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/channels/a;

    iget-object p1, p1, Lj$/nio/channels/a;->a:Ljava/nio/channels/AsynchronousFileChannel;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/a;->a:Ljava/nio/channels/AsynchronousFileChannel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic isOpen()Z
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/a;->a:Ljava/nio/channels/AsynchronousFileChannel;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    return v0
.end method
