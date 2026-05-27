.class final Ljaf;
.super Ljfc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljfc;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Ljge;Ljava/lang/Object;Ljdf;Ljdg;)Ljcz;
    .locals 7

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    new-instance p4, Ljal;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ljal;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljge;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Ljdf;Ljdg;)V

    return-object p4
.end method
