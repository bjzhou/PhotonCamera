.class public final Ldsm;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lmwn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lika;->b:Lika;

    sget-object v1, Lika;->g:Lika;

    sget-object v2, Lika;->m:Lika;

    invoke-static {v0, v1, v2}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v0

    sput-object v0, Ldsm;->a:Lmwn;

    return-void
.end method
