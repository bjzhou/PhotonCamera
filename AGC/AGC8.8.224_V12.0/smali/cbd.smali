.class public final Lcbd;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcbc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcax;

    invoke-direct {v0}, Lcax;-><init>()V

    sput-object v0, Lcbd;->a:Lcbc;

    return-void
.end method

.method public static a(Laed;Lcaz;Lcbc;)Laed;
    .locals 1

    new-instance v0, Lcba;

    invoke-direct {v0, p0, p1, p2}, Lcba;-><init>(Laed;Lcaz;Lcbc;)V

    return-object v0
.end method

.method public static b(ILcaz;)Laed;
    .locals 1

    new-instance v0, Laef;

    invoke-direct {v0, p0}, Laef;-><init>(I)V

    sget-object p0, Lcbd;->a:Lcbc;

    invoke-static {v0, p1, p0}, Lcbd;->a(Laed;Lcaz;Lcbc;)Laed;

    move-result-object p0

    return-object p0
.end method
