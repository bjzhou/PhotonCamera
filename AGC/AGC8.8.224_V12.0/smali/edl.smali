.class public interface abstract Ledl;
.super Ljava/lang/Object;

# interfaces
.implements Ledk;


# static fields
.field public static final a:Lilz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lilz;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-direct {v0, v1}, Lilz;-><init>(F)V

    sput-object v0, Ledl;->a:Lilz;

    return-void
.end method
