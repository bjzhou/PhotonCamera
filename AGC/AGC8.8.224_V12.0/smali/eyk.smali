.class public final Leyk;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljwb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljvk;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    sput-object v0, Leyk;->a:Ljwb;

    return-void
.end method
