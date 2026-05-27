.class final Lnmp;
.super Ljava/lang/Object;


# static fields
.field static final a:Lnmp;


# instance fields
.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnmp;

    new-instance v1, Lnmo;

    invoke-direct {v1}, Lnmo;-><init>()V

    invoke-direct {v0, v1}, Lnmp;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lnmp;->a:Lnmp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lnmp;->b:Ljava/lang/Throwable;

    return-void
.end method
