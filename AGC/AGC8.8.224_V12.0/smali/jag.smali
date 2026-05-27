.class public final Ljag;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ligo;

.field private static final b:Ljfc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljaf;

    invoke-direct {v0}, Ljaf;-><init>()V

    sput-object v0, Ljag;->b:Ljfc;

    new-instance v1, Ligo;

    const-string v2, "Auth.GOOGLE_SIGN_IN_API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Ligo;-><init>(Ljava/lang/String;Ljfc;[B[B)V

    sput-object v1, Ljag;->a:Ligo;

    return-void
.end method
