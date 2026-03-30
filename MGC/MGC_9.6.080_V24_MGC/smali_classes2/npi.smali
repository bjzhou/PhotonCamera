.class public abstract Lnpi;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final c:Landroid/app/DownloadManager;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/DownloadManager;Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lnpi;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnpi;->c:Landroid/app/DownloadManager;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a(Landroid/net/Uri;)Ljava/lang/Long;
.end method
