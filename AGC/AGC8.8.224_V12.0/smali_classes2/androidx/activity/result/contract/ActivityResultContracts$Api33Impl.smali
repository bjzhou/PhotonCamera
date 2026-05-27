.class public final Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;
.super Ljava/lang/Object;
.source "ActivityResultContracts.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api33Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;",
        "",
        "()V",
        "getPickImagesMaxLimit",
        "",
        "activity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;-><init>()V

    sput-object v0, Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$Api33Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPickImagesMaxLimit()I
    .locals 0

    .line 803
    invoke-static {}, Landroid/provider/MediaStore;->getPickImagesMaxLimit()I

    move-result p0

    return p0
.end method
