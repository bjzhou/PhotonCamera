.class public final Ljny;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljfc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljnx;

    invoke-direct {v0}, Ljnx;-><init>()V

    sput-object v0, Ljny;->a:Ljfc;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    return-void
.end method
