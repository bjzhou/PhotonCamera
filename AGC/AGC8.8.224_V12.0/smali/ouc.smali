.class public final synthetic Louc;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lomk;

.field private static final b:Lomo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Loub;->a:Loub;

    sput-object v0, Louc;->a:Lomk;

    sget-object v0, Lokz;->e:Lokz;

    sput-object v0, Louc;->b:Lomo;

    return-void
.end method

.method public static final a(Lott;)Lott;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Louv;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Louc;->a:Lomk;

    sget-object v1, Louc;->b:Lomo;

    instance-of v2, p0, Lots;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Lots;

    iget-object v3, v2, Lots;->a:Lomk;

    if-ne v3, v0, :cond_1

    iget-object v2, v2, Lots;->b:Lomo;

    if-ne v2, v1, :cond_1

    return-object p0

    :cond_1
    new-instance v2, Lots;

    invoke-direct {v2, p0, v0, v1}, Lots;-><init>(Lott;Lomk;Lomo;)V

    return-object v2
.end method
