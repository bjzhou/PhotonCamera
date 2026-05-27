.class public final Ldiq;
.super Ljava/lang/Object;


# static fields
.field public static final a:Llox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llox;

    const-string v1, "com.google.android.apps.camera"

    invoke-static {v1}, Llol;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Llox;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Llox;->b()Llox;

    move-result-object v0

    sput-object v0, Ldiq;->a:Llox;

    return-void
.end method
