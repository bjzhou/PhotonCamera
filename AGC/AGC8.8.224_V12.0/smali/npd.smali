.class public final Lnpd;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llbl;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Llbl;-><init>(I)V

    sput-object v0, Lnpd;->a:Ljava/lang/Runnable;

    return-void
.end method
