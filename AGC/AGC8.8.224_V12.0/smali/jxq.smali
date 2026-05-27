.class public final Ljxq;
.super Ljava/lang/Object;

# interfaces
.implements Ljxv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/FileDescriptor;I)Lkpf;
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    :try_start_0
    new-instance v0, Lklc;

    new-instance v1, Landroid/media/MediaMuxer;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    invoke-direct {v0, v1}, Lklc;-><init>(Landroid/media/MediaMuxer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljxu;

    invoke-direct {v0, p2, p1}, Ljxu;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method
