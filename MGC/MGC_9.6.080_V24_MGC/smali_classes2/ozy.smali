.class public final Lozy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpad;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final a(Ljava/io/FileDescriptor;I)Lpsc;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    :try_start_0
    new-instance p0, Lpnl;

    nop

    nop

    nop

    new-instance v0, Landroid/media/MediaMuxer;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    invoke-direct {p0, v0}, Lpnl;-><init>(Landroid/media/MediaMuxer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    new-instance p1, Lpac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p2, p0}, Lpac;-><init>(ILjava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop
.end method
