.class public final Ljiz;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ligo;

.field private static final b:Ljfc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljiv;

    invoke-direct {v0}, Ljiv;-><init>()V

    sput-object v0, Ljiz;->b:Ljfc;

    new-instance v1, Ligo;

    const-string v2, "Feedback.API"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Ligo;-><init>(Ljava/lang/String;Ljfc;[B[B)V

    sput-object v1, Ljiz;->a:Ligo;

    return-void
.end method
